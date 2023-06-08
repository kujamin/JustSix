package com.just.six.user.cmn;

import java.sql.SQLException;
import java.util.List;

public interface WorkDiv<T>{
	//CRUD : doSave(), doDelete(), doUpdate, doSelectOne(), doRetrieve()
	
		/**
		 * 등록
		 * @param inVO
		 * @return ㅆ
		 * @throws SQLException
		 */
		public abstract int doSave(T inVO)throws SQLException;
		
		/**
		 * 삭제
		 * @param inVO
		 * @return T
		 * @throws SQLException
		 */
		int doDelete(T inVO)throws SQLException;
		
		/**
		 * 수정
		 * @param inVO
		 * @return T
		 * @throws SQLException
		 */
		int doUpdate(T inVO)throws SQLException;
		
		/**
		 * 단건 조회
		 * @param inVO
		 * @return T
		 * @throws SQLException
		 */
		T doSelectOne(T inVO)throws SQLException;
		
		/**
		 * 다건 조회
		 * @param inVO
		 * @return T
		 * @throws SQLException
		 */
		List<T> doRetrieve(DTO inVO)throws SQLException;

}
