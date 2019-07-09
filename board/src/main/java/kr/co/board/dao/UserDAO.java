package kr.co.board.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.board.vo.TermsVO;

@Repository
public class UserDAO {
	
	@Inject
	private SqlSessionTemplate mybatis;

	public void login() {
		
	}

	public void register() {
		
	}

	public TermsVO terms() {
		return mybatis.selectOne("mapper.sql.SELECT_TERMS");
	}
}















