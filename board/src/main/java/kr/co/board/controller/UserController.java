package kr.co.board.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.board.service.UserService;
import kr.co.board.vo.TermsVO;
import kr.co.board.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping("/user/login")
	public String login() {
		return "/user/login";
	}
	
	@RequestMapping(value="/user/register", method=RequestMethod.GET)
	public String register() {
		return "/user/register";
	}
	
	@RequestMapping(value="/user/register", method=RequestMethod.POST)
	public String register(UserVO vo, HttpServletRequest req) {
		
		
		vo.setRegip(req.getRemoteAddr());
		
		service.register(vo);
		
		return "redirect:/user/login";
	}
	
	@RequestMapping("/user/terms")
	public String terms(Model model) {
		
		TermsVO vo = service.terms();
		
		model.addAttribute("vo", vo);
		
		return "/user/terms";
	}
	
	
	@RequestMapping(value="/user/checkUid")
	@ResponseBody
	public Map<String, Integer> checkUid(String uid) {
		
		int result = service.checkUid(uid);
		
		// Map객체를 Json 데이터로 변환(jackson 라이브러리)
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("result", result);
		
		return map;
	}
	
}







