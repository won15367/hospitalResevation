package com.won15367.reserve.dao;

import com.won15367.reserve.dto.MemberDto;

public interface MemberDao {

	public int idCheckDao(String mid);
	
	public void joinDao(String mid, String mpw, String mname, String mphone);
	
	public int loginCheckDao(String mid, String mpw);
	
	public MemberDto memberInfoDao(String mid);
	
	public void memberModifyDao(String mid, String mpw, String mname, String mphone);
	
}
