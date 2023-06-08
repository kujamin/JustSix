package com.just.six.user.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.just.six.user.dao.UserDao;
import com.just.six.user.domain.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	@Override
	public UserVO doSelectOne(UserVO inVO) throws SQLException {
		return userDao.doSelectOne(inVO);
	}

}
