package Chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@WebServlet("/chatSelect")
public class chatSelect extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		ChatDAO dao = new ChatDAO();
		
		// 전체 메시지 가져오는 부분
		String writer = request.getParameter("writer");
		ArrayList<Integer> chat_index = dao.roomCnt(writer); //writer = info의 mem_nick
		
		for (int i = 0; i < chat_index.size(); i++) {
			
		}
		
		ArrayList<ChatDTO> list = dao.selectAll();
		// json 변환 해주는 객체
		Gson gson = new Gson();
//		System.out.println("들어옵니다!!! 들어옵니다");
		
		out.print(gson.toJson(list));
		
	}

}
