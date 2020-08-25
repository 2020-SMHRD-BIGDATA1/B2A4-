package com.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.model.GaeDAO;
import com.model.GaeDTO;
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

		HttpSession session = request.getSession();
		String join_mail = (String) session.getAttribute("join_mail");
		
		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "UTF-8";
		ServletContext context = getServletContext(); // 어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨.
		String saveDir = context.getRealPath("imgFolder"); // 절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);

		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String mem_mail = join_mail;
		String dog_name = multi.getParameter("dog_name");
		String dog_age = multi.getParameter("dog_age");
		String dog_sex = multi.getParameter("dog_sex");
		String dog_weight = multi.getParameter("dog_weight");
		String dog_size = null;
		try {
			if (Integer.parseInt(dog_weight) < 5) {
				dog_size = "1";
			} else if (Integer.parseInt(dog_weight) < 10) {
				dog_size = "2";
			} else if (Integer.parseInt(dog_weight) < 20) {
				dog_size = "3";
			} else {
				dog_size = "4";
			}
		} catch (NumberFormatException e) {
			// NumberFormatException 이 발생한 경우 처리 방법
			System.out.println("넘버포멧예외발생!!");
		} catch (Exception e) {
			// Exception 이 발생한 경우 처리 방법
			System.out.println("예외발생!!");
		}

		String dog_species = multi.getParameter("dog_species");
		String dog_cut = multi.getParameter("dog_cut");
		String dog_walking = multi.getParameter("dog_walking");
		String dog_react = multi.getParameter("dog_reaction");
		String human_react = multi.getParameter("human_reaction");
		
		String dog_img = multi.getFilesystemName("imgfile");

		GaeDAO dao = new GaeDAO();
		GaeDTO dto = new GaeDTO(mem_mail, dog_img, dog_name, dog_age, dog_sex, dog_weight, dog_size, dog_species,
				dog_cut, dog_walking, dog_react, human_react);

		int result = dao.uploadInfo(dto);

		if (result > 0) {
			System.out.println("저장완료");
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("저장실패");
			response.sendRedirect("dogInfoForm.jsp");
		}

//		
//		
//		
//		
//  
//			String mem_mail = join_mail;
//			String dog_img = multi.getParameter("dog_img");
//			String dog_name = multi.getParameter("dog_name");
//			String dog_age = multi.getParameter("dog_age");
//			String dog_sex = multi.getParameter("dog_sex");
//			String dog_weight = multi.getParameter("dog_weight");
//			String dog_size = null;
//			try {
//				if (Integer.parseInt(dog_weight) < 5) {
//					dog_size = "1";
//				} else if (Integer.parseInt(dog_weight) < 10) {
//					dog_size = "2";
//				} else if (Integer.parseInt(dog_weight) < 20) {
//					dog_size = "3";
//				} else {
//					dog_size = "4";
//				}
//			} catch (NumberFormatException e) {
//				// NumberFormatException 이 발생한 경우 처리 방법
//				System.out.println("넘버포멧예외발생!!");
//			} catch (Exception e) {
//				// Exception 이 발생한 경우 처리 방법
//				System.out.println("예외발생!!");
//			}
//
//			String dog_species = multi.getParameter("dog_species");
//			String dog_cut = multi.getParameter("dog_cut");
//			String dog_walking = multi.getParameter("dog_walking");
//			String dog_react = multi.getParameter("dog_reaction");
//			String human_react = multi.getParameter("human_reaction");
//
//			GaeDTO dto = new GaeDTO(mem_mail, dog_img, dog_name, dog_age, dog_sex, dog_weight, dog_size, dog_species,
//					dog_cut, dog_walking, dog_react, human_react);

//		if (cnt > 0) {
//			System.out.println("정보입력 성공");
//			System.out.println();
//
//			// main.jsp로 이동
//			response.sendRedirect("infoSurvey.jsp");
//		} else {
//			System.out.println("정보입력 실패");
//			// join.jsp로 이동
//			response.sendRedirect("dogInfoForm.jsp");
//		}
	}
}
