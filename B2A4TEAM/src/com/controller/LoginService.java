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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String mail = request.getParameter("mail");
		String pw = request.getParameter("pw");
		MemberDTO dto = new MemberDTO(mail, pw);
		MemberDAO dao = new MemberDAO();

		MemberDTO info = dao.login(dto);
		if (info != null) {
			// �α��� �����ÿ��� session�� info��� �������� info��ü�� ����
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			response.sendRedirect("index.html");
		}else {
			response.sendRedirect("loginForm.jsp");
		}
		
	}
}
