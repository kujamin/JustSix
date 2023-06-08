package com.just.six.music.service;

import java.sql.SQLException;

import com.just.six.user.domain.MusicVO;

public interface MusicService {
	public MusicVO doSelectOne(MusicVO inVO)throws SQLException;
}
