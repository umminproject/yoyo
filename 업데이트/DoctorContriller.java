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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.naver.kus.entities.Board;
import com.naver.kus.service.BoardDao;

@Controller
public class DoctorContriller {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/doctorList", method = RequestMethod.GET)
	public String doctorList(Locale locale, Model model) {
		return "doctor/doctor_list";
	}
	
	@RequestMapping(value = "/doctorDetail", method = RequestMethod.GET)
	public ModelAndView doctorDetail( @ModelAttribute("board") Board board,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String b_id = (String) session.getAttribute("sessionid");
		board.setB_id(b_id);
		ModelAndView mav = new ModelAndView("doctor/doctor_detail");
		mav.addObject("board",board);
		
		return mav;
	}
	
	@RequestMapping(value = "/doctorNotice", method = RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam String b_id , HttpServletRequest request) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		Board board = dao.doctorNoticeAll(b_id);
		ModelAndView mav = new ModelAndView("board/board_list");
		mav.addObject("board", board);
		return mav;
	}
}
