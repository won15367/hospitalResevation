package com.won15367.reserve.dto;

import java.sql.Timestamp;

public class MemberDto {
	
	private String mid;
	private String mpw;
	private String mname;
	private String mphone;
	private Timestamp mdate;
	
	public MemberDto(String mid, String mpw, String mname, String mphone, Timestamp mdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.mdate = mdate;
	}

	public MemberDto() {
		super();
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public Timestamp getMdate() {
		return mdate;
	}

	public void setMdate(Timestamp mdate) {
		this.mdate = mdate;
	}
	
}
