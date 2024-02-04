package com.won15367.reserve.dao;

import java.util.ArrayList;

import com.won15367.reserve.dto.ReserveDto;

public interface ReserveDao {
	
	public int reserveCheckDao(String rdate, String rtime);
	
	public void reserveDao(String rid, String rname, String rdate, String rtime, String rcontent);
	
	public ArrayList<ReserveDto> memresListDao(String rid);
	
	public ReserveDto reserveViewDao(String rnum);
	
	public void reserveDeleteDao (String rnum);
	
	public ArrayList<ReserveDto> reserveListDao();
	
}
