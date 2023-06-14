package com.just.six.controller;

import com.just.six.dto.MemberDTO;
import com.just.six.service.MailSendService;
import com.just.six.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")  // 공통 주소 처리
public class MemberController {
	
	@Autowired
	MailSendService mailService;

    private final MemberService memberService;

    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    //회원 가입 페이지 이동
    @GetMapping("/save")
    public String saveForm() {
        return "save";
    }

    //회원 가입 페이지 에서 로그인 페이지로 이동
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        int saveResult = memberService.save(memberDTO);
        if (saveResult > 0) {
            return "login";
        } else {
            return "save";
        }
    }
    
    //이메일 인증
    @PostMapping("/**/mailCheck")
    @ResponseBody
    public String mailCheck(String email) {
    	System.out.println("이메일 인증 요청이 들어옴!");
    	System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
    }

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }
    
    //로그인
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
        boolean loginResult = memberService.login(memberDTO);
        if (loginResult) {
            session.setAttribute("loginEmail", memberDTO.getEmail());
            return "main";
        } else {
            return "login";
        }
    }

    @GetMapping("/")
    public String findAll(Model model) {
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "list";
    }
    
    //아이디 중복 체크
    @GetMapping("/**/idChk")
    @ResponseBody
    public int idChk(MemberDTO memberDTO) throws Exception {
    	String str = "";
    	str = memberDTO.getEmail();
    	System.out.println(str);
    	int result = memberService.idChk(memberDTO);
    	return result;
    }
    
    //회원가입 post
    @PostMapping("/**/register")
    public String postRegister(MemberDTO memberDTO) throws Exception {
    	int result = memberService.idChk(memberDTO);
    	try {
    		if(result == 1) {
    			return "/register";
    		}else if(result == 0) {
    			memberService.save(memberDTO);
    		}
    	}catch (Exception e) {
    		throw new RuntimeException();
    	}
		return "redirect:/";
    }
}
