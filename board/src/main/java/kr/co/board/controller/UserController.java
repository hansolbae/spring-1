package kr.co.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.board.service.UserService;
import kr.co.board.service.UserServiceImpl;
import kr.co.board.vo.TermsVO;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping("/user/login")
	public String login() {
		return "/user/login";
	}
	
	@RequestMapping("/user/register")
	public String register() {
		return "/user/register";
	}
	
	@RequestMapping("/user/terms")
	public String terms(Model model) {
		
		TermsVO vo = service.terms();
		
		model.addAttribute("vo", vo);
		
		return "/user/terms";
	}
	
}



