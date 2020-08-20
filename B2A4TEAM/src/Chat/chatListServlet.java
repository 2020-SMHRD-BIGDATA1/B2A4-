package Chat;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/chatListServlet")
public class chatListServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		//String mem_nick = request.getParameter("mem_nick");
		
		ChatDTO dto = new ChatDTO(writer, content);
		ChatDAO dao = new ChatDAO();

		ArrayList<ChatDTO> chat_content = dao.selectAll();
		if (chat_content != null) {
			// �α��� �����ÿ��� session�� info��� �������� info��ü�� ����
			HttpSession session = request.getSession();
			session.setAttribute("info", chat_content);
			response.sendRedirect("index.jsp");
		}
	}

}
