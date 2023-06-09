package com.just.six.service;

import com.just.six.dto.MusicDTO;
import com.just.six.repository.MusicRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MusicService {
    private final MusicRepository musicRepository;

    public MusicService(MusicRepository musicRepository) {
        this.musicRepository = musicRepository;
    }

    public List<MusicDTO> findKeywordMusic(MusicDTO musicDTO) {
        return musicRepository.findKeywordMusic(musicDTO);
    }
}
