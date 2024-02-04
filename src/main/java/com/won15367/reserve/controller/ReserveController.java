package com.won15367.reserve.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.won15367.reserve.dao.MemberDao;
import com.won15367.reserve.dao.ReserveDao;
import com.won15367.reserve.dto.MemberDto;
import com.won15367.reserve.dto.ReserveDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReserveController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping(value="reserve")
	public String reserve(Model model, HttpSession sesssion) {
		
		String mid = (String) sesssion.getAttribute("sessionId");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		MemberDto dto = dao.memberInfoDao(mid);
		
		String mname = dto.getMname();
		
		model.addAttribute("rid", mid);
		model.addAttribute("rname", mname);
		
		return "reserve_form";
	}
	
	@PostMapping(value="reserveOk")
	public String reserveOk(HttpServletRequest request, Model model) {
		
		ReserveDao dao = sqlSession.getMapper(ReserveDao.class);
		
		int checkFlag = dao.reserveCheckDao(request.getParameter("rdate"), request.getParameter("rtime")); // 같은 날짜 및 시간에 예약이 있는지 확인
		
		if (checkFlag == 0) {
			dao.reserveDao(request.getParameter("rid"), request.getParameter("rname"), request.getParameter("rdate"), request.getParameter("rtime"), request.getParameter("rcontent"));
		} else {
			model.addAttribute("failFlag", 1);
		}
		
		return "reserveOk";
	}

	
	@GetMapping(value="reserve_view")
	public String reserve_view(HttpServletRequest request, Model model) {
		
		ReserveDao dao = sqlSession.getMapper(ReserveDao.class);
		
		ReserveDto dto = dao.reserveViewDao(request.getParameter("rnum"));
		model.addAttribute("dto", dto);
		
		return "reserve_view";
	}
	
	@GetMapping(value="reserve_delete")
	public String test(HttpServletRequest request) {
		
		ReserveDao dao = sqlSession.getMapper(ReserveDao.class);
		dao.reserveDeleteDao(request.getParameter("rnum"));
			
		return "redirect:memberInfo";
	}
	
	
	
	@GetMapping(value="test")
	public String test(HttpSession session) {
		
		session.setAttribute("test", "성공");
		
		
		String mid = (String) session.getAttribute("sessionId");
		System.out.println(mid);	
		
		return "test";
	}
}
