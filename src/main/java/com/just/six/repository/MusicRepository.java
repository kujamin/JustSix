package com.just.six.repository;

import com.just.six.dto.MusicDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MusicRepository {

    private final SqlSessionTemplate sql;

    public MusicRepository(SqlSessionTemplate sql) {
        this.sql = sql;
    }

    public List<MusicDTO> findKeywordMusic(MusicDTO musicDTO) {
        System.out.println("musicDTO = " + musicDTO);
        return sql.selectList("Music.findKeywordMusic", musicDTO);
    }
}
