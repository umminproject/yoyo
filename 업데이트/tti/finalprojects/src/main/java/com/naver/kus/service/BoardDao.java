package com.naver.kus.service;

import java.util.ArrayList;

import com.naver.kus.entities.Board;
import com.naver.kus.entities.BoardPaging;

public interface BoardDao {
	public int selectCount(BoardPaging boardpaging);
	public int selectCountAll();
	public ArrayList<Board> doctorNoticeAll(String b_id);
	public int insertBoard(Board board);
	public ArrayList<Board> boardSelectAll(String b_dept);
	public ArrayList<Board> boardSelectCon(String b_id);
	public ArrayList<Board> SelectPageList(BoardPaging boardpaging);
	public Board selectOne(int b_seq);
	public int updateRow(Board board);
	public int deleteRow(int b_seq);
	public int updateBoard(Board board);
	public int updateHit(int b_seq);
	public int insertReply(Board board);
}
