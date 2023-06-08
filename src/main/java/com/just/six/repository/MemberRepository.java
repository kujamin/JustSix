package com.just.six.repository;

import com.just.six.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {

    private final SqlSessionTemplate sql;

    public MemberRepository(SqlSessionTemplate sql) {
        this.sql = sql;
    }

    public int save(MemberDTO memberDTO) {
        System.out.println("memberDTO = " + memberDTO);
        return sql.insert("Member.save", memberDTO);
//        **Mapper.xml 과 일치해야함 namespace.id
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }
}
