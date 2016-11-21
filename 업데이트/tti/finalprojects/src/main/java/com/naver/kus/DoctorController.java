package com.naver.kus;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.naver.kus.service.DoctorDao;

@Controller
public class DoctorController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/doctorList", method = RequestMethod.GET)
	public String doctorList(Locale locale, Model model) {
		return "doctor/doctor_list";
	}
	
	@RequestMapping(value = "/doctorDetail1", method = RequestMethod.GET)
	public ModelAndView doctorDetail1(Locale locale, Model model) {
		  DoctorDao dao = sqlSession.getMapper(DoctorDao.class);
		  String d_id= "doctor1";
	      int total = dao.selectCount(d_id);
	      System.out.println("-->"+total);
	      ModelAndView mav = new ModelAndView("doctor/doctor_detail1");
	      mav.addObject("total",total);
	      return mav;
	}
	@RequestMapping(value = "/doctorDetail2", method = RequestMethod.GET)
	public ModelAndView doctorDetail2(Locale locale, Model model) {
		  DoctorDao dao = sqlSession.getMapper(DoctorDao.class);
		  String d_id= "doctor2";
	      int total = dao.selectCount(d_id);
	      System.out.println("-->"+total);
	      ModelAndView mav = new ModelAndView("doctor/doctor_detail2");
	      mav.addObject("total",total);
	      return mav;
	}
	@RequestMapping(value = "/doctorDetail3", method = RequestMethod.GET)
	public ModelAndView doctorDetail3(Locale locale, Model model) {
		  DoctorDao dao = sqlSession.getMapper(DoctorDao.class);
		  String d_id= "doctor3";
	      int total = dao.selectCount(d_id);
	      System.out.println("-->"+total);
	      ModelAndView mav = new ModelAndView("doctor/doctor_detail3");
	      mav.addObject("total",total);
	      return mav;
	}
	@RequestMapping(value = "/doctorDetail4", method = RequestMethod.GET)
	public ModelAndView doctorDetail4(Locale locale, Model model) {
		  DoctorDao dao = sqlSession.getMapper(DoctorDao.class);
		  String d_id= "doctor4";
	      int total = dao.selectCount(d_id);
	      System.out.println("-->"+total);
	      ModelAndView mav = new ModelAndView("doctor/doctor_detail4");
	      mav.addObject("total",total);
	      return mav;
	}
	@RequestMapping(value = "/doctorDetail5", method = RequestMethod.GET)
	public ModelAndView doctorDetail5(Locale locale, Model model) {
		  DoctorDao dao = sqlSession.getMapper(DoctorDao.class);
		  String d_id= "doctor5";
	      int total = dao.selectCount(d_id);
	      System.out.println("-->"+total);
	      ModelAndView mav = new ModelAndView("doctor/doctor_detail5");
	      mav.addObject("total",total);
	      return mav;
	}
	
	@RequestMapping(value = "/doctorNotice", method = RequestMethod.GET)
	public ModelAndView doctorNotice(@RequestParam String b_id , HttpServletRequest request) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		ArrayList<Board> board = dao.doctorNoticeAll(b_id);
		ModelAndView mav = new ModelAndView("doctor/dr_notice_list");
		mav.addObject("boards", board);
		mav.addObject("b_id", b_id);
		return mav;
	}
	@RequestMapping(value = "/noticeInsertForm", method = RequestMethod.GET)
	public String noticeInsertForm(Locale locale, Model model) {
		return "doctor/notice_insert";
	}
	@RequestMapping(value = "/consultingInsertForm", method = RequestMethod.GET)
	public ModelAndView consultingInsertForm(@RequestParam String b_dept,Locale locale, Model model) {
		ModelAndView mav = new ModelAndView("doctor/consulting_insert");
		mav.addObject("b_dept", b_dept);
		return mav;
	}
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
	public ModelAndView noticeInsert(@ModelAttribute("board") Board board,HttpServletRequest request){
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
	@RequestMapping(value = "/consultingInsert", method = RequestMethod.POST)
	public ModelAndView consultingInsert(@ModelAttribute("board") Board board,HttpServletRequest request){
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
}
