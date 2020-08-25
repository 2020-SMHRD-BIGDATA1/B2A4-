package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/updateService")
public class updateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		String mail = info.getMem_mail();
		String pw = request.getParameter("mem_pw");
		String name = request.getParameter("mem_name");
		String nick = request.getParameter("mem_nick");
		String gender = request.getParameter("mem_gender");
		String birth = request.getParameter("mem_birth");
		String tel = request.getParameter("mem_tel");
		String addr = request.getParameter("mem_addr");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(mail, pw, name, nick, gender, birth, tel, addr);
		int cnt = dao.update(dto); 
		
		if (cnt > 0) {
			System.out.println("회원정보 수정 성공");
			
			// main.jsp로 이동
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("회원정보 수정 실패");
		
	
		}

	}

}
