package kr.co.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.board.dao.UserDAO;
import kr.co.board.vo.TermsVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;
	
	@Override
	public void login() {
		
	}

	@Override
	public void register() {
		
	}

	@Override
	public TermsVO terms() {
		return dao.terms();
	}

}
