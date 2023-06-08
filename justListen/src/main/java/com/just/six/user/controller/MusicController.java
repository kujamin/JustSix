package com.just.six.user.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.just.six.music.service.MusicService;
import com.just.six.user.domain.MusicVO;

@Controller
public class MusicController {
	
	@Autowired
	MusicService musicService;
	
	public MusicController() {
		System.out.println("default MusicController()");
	}
	
	@RequestMapping(value = "/music/do_select_one.do", method = RequestMethod.POST)
	public String doSelectOn(Model model, HttpServletRequest req, MusicVO vo) throws SQLException {
		MusicVO inVO = vo;
		
		MusicVO outVO = musicService.doSelectOne(inVO);
		model.addAttribute("id", outVO.getId());
		model.addAttribute("title", outVO.getTitle());
		model.addAttribute("album", outVO.getAlbum());
		model.addAttribute("artist", outVO.getArtist());
		model.addAttribute("lyrics", outVO.getLyrics());
		
		
		return "music/music";	
	}
	
	@RequestMapping(value = "/music/view.do")
	public String musicView() throws SQLException {
		System.out.println("musicView()");
		return "music/music";
	}
}
