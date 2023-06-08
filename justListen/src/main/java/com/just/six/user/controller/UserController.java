package com.just.six.user.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.just.six.user.domain.UserVO;
import com.just.six.user.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	public UserController() {
		System.out.println("default UserController()");
	}

	@RequestMapping(value = "/user/do_select_one.do", method = RequestMethod.POST)
	public String doSelectOn(Model model, HttpServletRequest req, UserVO vo) throws SQLException {
		System.out.println("=============================");
		System.out.println("==doSelectOne()");
		System.out.println("==vo()" + vo);
		System.out.println("=============================");
		UserVO inVO = vo;
	
		UserVO outVO = userService.doSelectOne(inVO);
	
		System.out.println("=============================");
		System.out.println("==outVO()" + outVO);
		System.out.println("=============================");
	
		model.addAttribute("email", outVO.getEmail());
		model.addAttribute("pw", outVO.getPw());
		model.addAttribute("name", outVO.getName());
		
		return "user/user";
	}

	@RequestMapping(value = "/user/view.do")
	public String userView() throws SQLException {
		System.out.println("userView()");
		return "user/user";
	}
}
