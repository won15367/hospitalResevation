package com.won15367.reserve.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.won15367.reserve.dao.MemberDao;
import com.won15367.reserve.dao.QaboardDao;
import com.won15367.reserve.dto.MemberDto;
import com.won15367.reserve.dto.QaboardDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class QaboardCotroller {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/qaForm")
	public String qaForm(Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionId");
		
		if (mid == null) {
			
			model.addAttribute("loginFlag", 0);
			
		} else {
		
			MemberDao mdao = sqlSession.getMapper(MemberDao.class);
			MemberDto mdto = mdao.memberInfoDao(mid);
			
			String mname = mdto.getMname();
			
			model.addAttribute("loginFlag", 1);
			model.addAttribute("mid", mid);
			model.addAttribute("mname", mname);
				
		}
		
		return "qa_form";
		
	}
	
	
	@GetMapping("/qaCheck")
	public String qaCheck(HttpServletRequest request, Model model) {
		
		QaboardDao dao = sqlSession.getMapper(QaboardDao.class);
		dao.qaCreateDao(request.getParameter("qaid"), request.getParameter("qaname"), request.getParameter("qaquestion"));
		
		return "redirect:memberInfo";
	}
	
	@GetMapping("/memberQalist")
	public String memberQalist(HttpServletRequest request, Model model, HttpSession session) {
		
		QaboardDao dao = sqlSession.getMapper(QaboardDao.class);
		String mid = (String) session.getAttribute("sessionId");
		
		if (mid.equals("Admin")) {
			
			ArrayList<QaboardDto> dtos = dao.qaAllListDao();
			
			model.addAttribute("qaDtos", dtos);
			
			return "adminQalist";
			
		} else {
		
			ArrayList<QaboardDto> dtos = dao.qaListDao(mid);
			
			MemberDao mdao = sqlSession.getMapper(MemberDao.class);
			MemberDto mdto = mdao.memberInfoDao(mid);
			String mname = mdto.getMname();
					
			model.addAttribute("qaDtos", dtos);
			model.addAttribute("mname", mname);
			
			return "memberQalist";
		
		}
		
	}
	
	
	@GetMapping("/qaView")
	public String qaView(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionId");
		
		QaboardDao dao = sqlSession.getMapper(QaboardDao.class);
		QaboardDto dto = dao.qaViewDao(request.getParameter("qanum"));
		
		model.addAttribute("dto", dto);
		
		if (mid.equals("Admin")) {
						
			return "admin_qa_answer";
			
		} else {
					
			return "qa_view";
		
		}
	}
	
	@GetMapping("/qaAnswerOk")
	public String qaAnswerOk(HttpServletRequest request, Model model, HttpSession session) {
		
		QaboardDao dao = sqlSession.getMapper(QaboardDao.class);
		dao.qaAnswerDao(request.getParameter("qanum"), request.getParameter("qaanswer"));		
				
		return "redirect:memberQalist";
	}
	
}
