package kr.co.booktopia.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.booktopia.service.MemberService;
import kr.co.booktopia.vo.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberService service;
	
	
	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping(value="/member/register", method=RequestMethod.GET)
	public String register() {	
		return "/member/register";
	}
	
	@RequestMapping(value="/member/register", method=RequestMethod.POST)
	public String register(MemberVO vo) {
		
		service.register(vo);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping("/member/mypage")
	public String mypage() {
		return "/member/mypage";
	}
	
}
