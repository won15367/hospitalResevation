package com.won15367.reserve.controller;

import java.util.ArrayList;

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
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	@PostMapping("/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		int checkFlag = dao.idCheckDao(request.getParameter("mid"));
		
		if (checkFlag == 0) {
			dao.joinDao(request.getParameter("mid"), request.getParameter("mpw"), request.getParameter("mname"), request.getParameter("mphone"));
			model.addAttribute("mid",request.getParameter("mid"));
			model.addAttribute("mname",request.getParameter("mname"));
		}
		
		model.addAttribute("joinCheck", checkFlag);
		
		return "joinOk";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		int checkFlag = dao.loginCheckDao(request.getParameter("mid"), request.getParameter("mpw"));
		
		if (checkFlag == 1) {
			session.setAttribute("sessionId", request.getParameter("mid"));
			MemberDto dto = dao.memberInfoDao(request.getParameter("mid"));
			model.addAttribute("memberDto", dto);
		} else {
			model.addAttribute("loginCheck", checkFlag);
		}
		
		return "loginOk";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "index";
	}
	
	@GetMapping("/memberInfo")
	public String memberInfo(Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionId");
		ReserveDao rdao = sqlSession.getMapper(ReserveDao.class);
		
		if (mid.equals("Admin")) {
			
			ArrayList<ReserveDto> rdtos = rdao.reserveListDao();  // 모든 예약정보를 검색해서 저장
			model.addAttribute("rdtos", rdtos);
						
			return "adminInfo";
			
		} else {
		
			MemberDao mdao = sqlSession.getMapper(MemberDao.class);
			MemberDto mdto = mdao.memberInfoDao(mid);  // id로 회원정보를 검색해온다.
			
			String mname = mdto.getMname();
			model.addAttribute("mname", mname);  // 저장한 회원정보에서 이름을 추출하여 모델에 실어보낸다.
			
			ArrayList<ReserveDto> rdtos = rdao.memresListDao(mid);  // id가 일치하는 예약정보를 검색
			model.addAttribute("rdtos", rdtos);
					
			return "memberInfo";
			
		}
		
	}
	
	
	@GetMapping("/memberInfoView")
	public String memberInfoView(Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionId");
		
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		MemberDto mdto = mdao.memberInfoDao(mid);
		
		model.addAttribute("memberDto", mdto);
				
		return "memberInfoView";
	}
	
	@GetMapping("/modify")
	public String modify(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionId");
		
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		MemberDto mdto = mdao.memberInfoDao(mid);
		
		model.addAttribute("memberDto", mdto);
		
		return "modify_form";
	}
	
	@PostMapping("/modifyOk")
	public String modifyOk(HttpServletRequest request, Model model) {
		
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		mdao.memberModifyDao(request.getParameter("mid"), request.getParameter("mpw"), request.getParameter("mname"), request.getParameter("mphone"));
				
		return "redirect:memberInfoView";
	}
	
  }
