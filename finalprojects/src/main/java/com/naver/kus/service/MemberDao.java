package com.naver.kus.service;

import java.util.ArrayList;

import com.naver.kus.entities.Member;

public interface MemberDao {
	public int selectCount(String id);
	public Member selectOne(String id);
	public int insertMember(Member member);
	public ArrayList<Member> selectAll();
	public int updateRow(Member member);
	public int deleteOne (String id);
	public Member selectLogin(Member member);
}
