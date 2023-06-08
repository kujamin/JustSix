package com.just.six.music.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.just.six.user.cmn.DTO;
import com.just.six.user.domain.MusicVO;

@Repository
public class MusicDaoImpl implements MusicDao{
	
	final String NAMESPACE = "com.just.six.music";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB 연결객체

	@Override
	public int doSave(MusicVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(MusicVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doUpdate(MusicVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MusicVO doSelectOne(MusicVO inVO) throws SQLException {
		String statement = this.NAMESPACE + ".doSelectOne";
		MusicVO outVO = this.sqlSessionTemplate.selectOne(statement, inVO);
		return outVO;
	}

	@Override
	public List<MusicVO> doRetrieve(DTO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
