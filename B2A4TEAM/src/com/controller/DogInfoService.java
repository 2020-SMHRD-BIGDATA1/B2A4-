package com.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.jmx.snmp.Enumerated;

/**
 * Servlet implementation class DogInfoService
 */
@WebServlet("/DogInfoService")
public class DogInfoService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String fileName = request.getParameter("imgfile");

		System.out.println(fileName);
		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "UTF-8";
		ServletContext context = getServletContext(); // ���ø����̼ǿ� ���� ������ ServletContext ��ü�� ���� ��.
		String saveDir = context.getRealPath("imgFolder"); // �����θ� ������
		System.out.println("������ >> " + saveDir);
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String dog_name = request.getParameter("dog_name");
		String dog_age = request.getParameter("dog_age");
		String dog_gender = request.getParameter("dog_gender");
		String dog_weight = request.getParameter("dog_weight");
		String dog_species = request.getParameter("dog_species");
		String dog_neu = request.getParameter("dog_neu");
		String dog_img = request.getParameter("dog_img");
		String dog_walking = request.getParameter("dog_walking");
		String dog_react = request.getParameter("dog_reaction");
		String human_react = request.getParameter("human_reaction");

		
		
//		if (cnt > 0) {
//			System.out.println("�����Է� ����");
//			System.out.println();
//
//			// main.jsp�� �̵�
//			response.sendRedirect("infoSurvey.jsp");
//		} else {
//			System.out.println("�����Է� ����");
//			// join.jsp�� �̵�
//			response.sendRedirect("dogInfoForm.jsp");
//		}
	}
}
