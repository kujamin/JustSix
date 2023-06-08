package com.just.six.music.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.just.six.music.dao.MusicDao;
import com.just.six.user.domain.MusicVO;

@Service
public class MusicServiceImpl implements MusicService{

	@Autowired
	MusicDao musicDao;

	@Override
	public MusicVO doSelectOne(MusicVO inVO) throws SQLException {
		return musicDao.doSelectOne(inVO);
	}
	
	
}
