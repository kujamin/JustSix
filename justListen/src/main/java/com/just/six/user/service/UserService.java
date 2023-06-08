package com.just.six.user.service;

import java.sql.SQLException;

import com.just.six.user.domain.UserVO;

public interface UserService {
	public UserVO doSelectOne(UserVO inVO) throws SQLException;
}
