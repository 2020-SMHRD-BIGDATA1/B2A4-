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

		String fileName = request.getParameter("imgfile");

		System.out.println(fileName);
		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "UTF-8";
		ServletContext context = getServletContext(); // ���ø����̼ǿ� ���� ������ ServletContext ��ü�� ���� ��.
		String saveDir = context.getRealPath("imgFolder"); // �����θ� ������
		System.out.println("������ >> " + saveDir);

		boolean isMulti = ServletFileUpload.isMultipartContent(request);// booleanŸ��. ??????
		if (isMulti) {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding,
					new DefaultFileRenamePolicy());
			HttpSession session = request.getSession();
			session.removeAttribute("join_mail");
			MemberDTO join_mail = (MemberDTO) session.getAttribute("join_mail");
			String mem_mail = join_mail.getMem_mail();
			String dog_img = request.getParameter("dog_img");
			String dog_name = request.getParameter("dog_name");
			String dog_age = request.getParameter("dog_age");
			String dog_sex = request.getParameter("dog_sex");
			String dog_weight = request.getParameter("dog_weight");
			String dog_size = null;
			if (Integer.parseInt(dog_weight) < 5) {
				dog_size = "1";
			} else if (Integer.parseInt(dog_weight) < 10) {
				dog_size = "2";
			} else if (Integer.parseInt(dog_weight) < 20) {
				dog_size = "3";
			} else {
				dog_size = "4";
			}
			String dog_species = request.getParameter("dog_species");
			String dog_cut = request.getParameter("dog_cut");
			String dog_walking = request.getParameter("dog_walking");
			String dog_react = request.getParameter("dog_reaction");
			String human_react = request.getParameter("human_reaction");
			try {
				GaeDAO dao = new GaeDAO();
				GaeDTO dto = new GaeDTO(mem_mail, dog_img, dog_name, dog_age, dog_sex, dog_weight, dog_size,
						dog_species, dog_cut, dog_walking, dog_react, human_react);
				int result = dao.uploadInfo(dto);
				if (result > 0) {
					System.out.println("����Ϸ�");
					response.sendRedirect("index.jsp");
				} else {
					System.out.println("�������");
					response.sendRedirect("dogInfoForm.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("�Ϲ� ���� Form�Դϴ�");
		}

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
