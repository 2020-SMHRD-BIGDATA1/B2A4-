package Chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.model.MemberDTO;

@WebServlet("/chatInput")
public class chatInput extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		MemberDTO dto  = (MemberDTO)session.getAttribute("info"); //mail, pw, nick
		

		int index = 1;
		String writer = dto.getMem_nick();
		String content = request.getParameter("content");
		


		ChatDTO chatdto = new ChatDTO(writer, content);
		ChatDAO dao = new ChatDAO();
		int cnt = dao.input(chatdto);
		
		if (cnt > 0) {
			System.out.println("�Է¼���");
		} else {
			System.out.println("�Է½���");
		} //ä�� ������
		 
		ArrayList<ChatDTO> list = dao.selectAll(); //�׵��ȿ� ���� ä�� �ҷ�����
		Gson gson = new Gson();
		out.print(gson.toJson(list));
	}

}
