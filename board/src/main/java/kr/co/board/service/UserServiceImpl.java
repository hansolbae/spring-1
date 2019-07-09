package kr.co.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.board.dao.UserDAO;
import kr.co.board.vo.TermsVO;
import kr.co.board.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;
	
	@Override
	public void login() {
		
	}

	@Override
	public void register(UserVO vo) {
		dao.register(vo);
	}

	@Override
	public TermsVO terms() {
		return dao.terms();
	}

}
