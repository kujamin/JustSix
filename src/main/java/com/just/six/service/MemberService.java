package com.just.six.service;

import com.just.six.dto.MemberDTO;
import com.just.six.repository.MemberRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    private final MemberRepository memberRepository;

   
    
    public MemberService(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    public int save(MemberDTO memberDTO) {
        return memberRepository.save(memberDTO);
    }
    
    public int idChk(MemberDTO memberDTO) {
    	return memberRepository.idChk(memberDTO);
    }

    public boolean login(MemberDTO memberDTO) {
        MemberDTO loginMember = memberRepository.login(memberDTO);
        if (loginMember != null) {
            return true;
        } else {
            return false;
        }
    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

	
}
