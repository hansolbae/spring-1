package kr.co.booktopia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.booktopia.vo.MemberVO;

@Repository
public class MemberDAO {

	@Inject
	private SqlSession mybatis;
	
	
	public void register(MemberVO vo) {
		mybatis.insert("mapper.member.INSERT_MEMBER", vo);
	}
	
}
