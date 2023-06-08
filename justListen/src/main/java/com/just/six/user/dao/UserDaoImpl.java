package com.just.six.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.just.six.user.cmn.DTO;
import com.just.six.user.domain.UserVO;

@Repository
public class UserDaoImpl implements UserDao{
	
	final String NAMESPACE = "com.just.six.user";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB 연결객체

	@Override
	public int doSave(UserVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(UserVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doUpdate(UserVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVO doSelectOne(UserVO inVO) throws SQLException {
		System.out.println("--------------------------");
		System.out.println("-AnnoDaoImpl-");
		System.out.println("-inVO-" + inVO.toString());
		System.out.println("--------------------------");
		
		String statement = this.NAMESPACE + ".doSelectOne";
		System.out.println("--------------------------");
		System.out.println("-statement-" + statement);
		UserVO outVO = this.sqlSessionTemplate.selectOne(statement, inVO);
		System.out.println("-outVO-" + outVO);
		
		return outVO;
	}

	@Override
	public List<UserVO> doRetrieve(DTO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
