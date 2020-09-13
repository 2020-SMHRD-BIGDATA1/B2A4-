package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/matchingcnt")
public class matchingcnt extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email=request.getParameter("email");
		HttpSession session = request.getSession();
		session.removeAttribute("matchingcnt");
		int matchingcnt=0;
		session.setAttribute("matchingcnt", matchingcnt);
		session.setMaxInactiveInterval(86400);

		response.sendRedirect("chatReset.jsp?mem_mail="+email);
		
	}
}
