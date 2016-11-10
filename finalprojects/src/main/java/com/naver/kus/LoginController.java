package com.naver.kus;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.naver.kus.entities.Member;
import com.naver.kus.service.MemberDao;

@Controller
public class LoginController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login/member_login";
	}
	@RequestMapping(value = "/loginFail", method = RequestMethod.GET)
	public String loginFail(Locale locale, Model model) {
		return "login/login_fail";
	}
	@RequestMapping(value = "/loginMember", method = RequestMethod.POST)
	public String loginMember(@ModelAttribute("member") Member member,HttpSession session) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		Member data = dao.selectLogin(member);
		if(data == null){
			return "redirect:/loginFail";
		}
		else{
			session.setAttribute("sessionid",data.getId());
			session.setAttribute("sessionpass",data.getPassword());
			session.setAttribute("sessionname",data.getName());
			session.setAttribute("sessionlevel",data.getMemberlevel());
			return "redirect:/home";
		}
	}
	@RequestMapping(value = "/logoutForm", method = RequestMethod.GET)
	public String logoutForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return "login/member_logout_yn";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/home";
	}
}
