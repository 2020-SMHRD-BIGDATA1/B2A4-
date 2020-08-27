package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String mail = request.getParameter("mail");
		String pw = request.getParameter("pw");
		// String mem_nick = request.getParameter("mem_nick");
		int matchingcnt = 1;

		MemberDTO dto = new MemberDTO(mail, pw);
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(dto);
		if (info != null) {
			// 로그인 성공시에는 session에 info라는 네임으로 info객체를 저장
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			if (session.getAttribute("matchingcnt") == null) {
				session.setAttribute("matchingcnt", matchingcnt);
			}
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("loginForm.jsp");
		}

	}
}
