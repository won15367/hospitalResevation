package com.won15367.reserve.dao;

import java.util.ArrayList;

import com.won15367.reserve.dto.QaboardDto;

public interface QaboardDao {
	
	public void qaCreateDao(String qaid, String qaname, String qaQuestion);
	
	public ArrayList<QaboardDto> qaListDao(String qaid);
	
	public QaboardDto qaViewDao(String qanum);

	public ArrayList<QaboardDto> qaAllListDao();
	
	public void qaAnswerDao(String qanum, String qaanswer);
}
