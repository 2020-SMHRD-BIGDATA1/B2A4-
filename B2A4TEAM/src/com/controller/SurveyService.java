package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.GaeDAO;
import com.model.GaeDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/SurveyService")
public class SurveyService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String join_mail = (String) session.getAttribute("join_mail");
		String mem_mail = join_mail;
		String test1 = request.getParameter("test1");
		String test2 = request.getParameter("test2");
		String test3 = request.getParameter("test3");
		String test4 = request.getParameter("test4");
		String test5 = request.getParameter("test5");
		String test6 = request.getParameter("test6");
		String test7 = request.getParameter("test7");
		String test8 = request.getParameter("test8");

		GaeDAO dao = new GaeDAO();
		GaeDTO dto = new GaeDTO(mem_mail,test1,test2,test3,test4,test5,test6,test7,test8);
		int cnt = dao.submitSurvey(dto);

		if (cnt > 0) {
			System.out.println("설문 입력 성공");

			// main.jsp로 이동
			response.sendRedirect("dogInfoForm.jsp");
		} else {
			System.out.println("설문 입력 실패");
			// join.jsp로 이동
			response.sendRedirect("infoSurvey.jsp");

		}
	}

}
