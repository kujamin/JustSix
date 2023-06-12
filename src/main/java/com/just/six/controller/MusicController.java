package com.just.six.controller;

import com.just.six.dto.MusicDTO;
import com.just.six.service.MusicService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/music")
public class MusicController {

    private final MusicService musicService;

    public MusicController(MusicService musicService) {
        this.musicService = musicService;
    }

    @GetMapping("/recommend")
    public String saveForm() {
        return "recommend";
    }

    @PostMapping("/recommend")
    public String recommend(@ModelAttribute MusicDTO musicDTO, Model model) {
        List<MusicDTO> musicList = musicService.findKeywordMusic(musicDTO);
        int count = musicList.size();
        model.addAttribute("musicList", musicList);
        model.addAttribute("count", count);
        return "result";
    }
}
