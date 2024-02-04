package com.won15367.reserve.dto;

public class ReserveDto {
	
	private int rnum;
	private String rid;
	private String rname;
	private String rdate;
	private String rtime;
	private String rcontent;
	private String rmaketime;
	
	public ReserveDto() {
		super();
	}

	public ReserveDto(int rnum, String rid, String rname, String rdate, String rtime, String rcontent,
			String rmaketime) {
		super();
		this.rnum = rnum;
		this.rid = rid;
		this.rname = rname;
		this.rdate = rdate;
		this.rtime = rtime;
		this.rcontent = rcontent;
		this.rmaketime = rmaketime;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRmaketime() {
		return rmaketime;
	}

	public void setRmaketime(String rmaketime) {
		this.rmaketime = rmaketime;
	}

	
}
