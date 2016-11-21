package com.naver.kus;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class BoardController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Locale locale, Model model) {
		
		return "board/board_k";
	}
	
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public ModelAndView boardList(@RequestParam String b_dept,HttpServletResponse response, 
			HttpServletRequest request) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		ArrayList<Board> board = dao.boardSelectAll(b_dept);
		ModelAndView mav = new ModelAndView("board/board_list");
		mav.addObject("boards", board);
		return mav;
	}
	@RequestMapping(value = "/boardInsertForm", method = RequestMethod.GET)
	public String boardInsertForm(Locale locale, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object data = session.getAttribute("sessionid");
		if(data == null)
			return "login/login_fail";
		else
			return "board/board_insert";
	}
	@RequestMapping(value = "/boardInsert", method = RequestMethod.POST)
	public ModelAndView boardInsert(@ModelAttribute("board") Board board,HttpServletRequest request){
		ModelAndView mav = new ModelAndView("member/member_result");
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		String b_ip = request.getRemoteAddr();
		SimpleDateFormat simple = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.KOREA);
		Date currentdate = new Date();
		String b_date = simple.format(currentdate);
		HttpSession session = request.getSession();
		String b_id = (String) session.getAttribute("sessionid");
		String b_name = (String) session.getAttribute("sessionname");
		String b_email = (String) session.getAttribute("sessionemail");
		board.setB_ip(b_ip);
		board.setB_id(b_id);
		board.setB_name(b_name);
		board.setB_email(b_email);
		board.setB_date(b_date);
		board.setB_step(0);
		board.setB_hit(0);
		board.setB_level(0);
		String msg="";
		int result = bdao.insertBoard(board);
		if(result>0)
			msg= "success! Insert your article";
		else
			msg= "failed! Insert your article";
		mav.addObject("result","ok");
		mav.addObject("msg",msg);
		
		return mav;
	}
	@RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam int b_seq, HttpServletResponse response, HttpServletRequest request) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.updateHit(b_seq);
		Board board = dao.selectOne(b_seq);
		ModelAndView mav = new ModelAndView("board/board_detail");
		mav.addObject("board", board);
		
		return mav;
	}
}
