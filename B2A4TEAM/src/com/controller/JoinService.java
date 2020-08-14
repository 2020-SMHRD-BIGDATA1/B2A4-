package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String name = request.getParameter("mem_name");
		String mail = request.getParameter("mem_mail");
		String pw = request.getParameter("mem_pw");
		String nick = request.getParameter("mem_nick");
		String gender = request.getParameter("mem_gender");
		String birth = request.getParameter("mem_birth");
		String tel = request.getParameter("mem_tel");
		String addr = request.getParameter("mem_addr");

		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(name, mail, pw, nick, gender, birth, tel, addr);
		int cnt = dao.join(dto);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			// main.jsp로 이동
			response.sendRedirect("home.jsp");
		} else {
			System.out.println("회원가입 실패");
			// join.jsp로 이동
			response.sendRedirect("home.jsp");
		}
	}

}
