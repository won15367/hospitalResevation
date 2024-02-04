package com.won15367.reserve.dto;

import java.sql.Timestamp;

public class QaboardDto {
	
	private String qanum;
	private String qaid;
	private String qaname;
	private String qaquestion;
	private String qaanswer;
	private Timestamp qadate;
	
	public QaboardDto() {
		super();
	}

	public QaboardDto(String qanum, String qaid, String qaname, String qaquestion, String qaanswer, Timestamp qadate) {
		super();
		this.qanum = qanum;
		this.qaid = qaid;
		this.qaname = qaname;
		this.qaquestion = qaquestion;
		this.qaanswer = qaanswer;
		this.qadate = qadate;
	}

	public String getQanum() {
		return qanum;
	}

	public void setQanum(String qanum) {
		this.qanum = qanum;
	}

	public String getQaid() {
		return qaid;
	}

	public void setQaid(String qaid) {
		this.qaid = qaid;
	}

	public String getQaname() {
		return qaname;
	}

	public void setQaname(String qaname) {
		this.qaname = qaname;
	}

	public String getQaquestion() {
		return qaquestion;
	}

	public void setQaquestion(String qaquestion) {
		this.qaquestion = qaquestion;
	}

	public String getQaanswer() {
		return qaanswer;
	}

	public void setQaanswer(String qaanswer) {
		this.qaanswer = qaanswer;
	}

	public Timestamp getQadate() {
		return qadate;
	}

	public void setQadate(Timestamp qadate) {
		this.qadate = qadate;
	}
			
}
