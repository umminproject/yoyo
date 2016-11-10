package com.naver.kus;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "board/board_list";
	}
}
