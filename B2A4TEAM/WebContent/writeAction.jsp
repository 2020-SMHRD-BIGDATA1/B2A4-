<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GaeManDa</title>
</head>
<body>
	<%
			MemberDTO info = (MemberDTO) session.getAttribute("info");
		%>
	<%
		String mem_mail = null;
		if (session.getAttribute("mem_mail") != null) {
			mem_mail = (String) session.getAttribute("mem_mail");
		}
		if (info == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}else {
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.write(bbs.getBbsTitle(), info.getMem_mail(), bbs.getBbsContent());
				if(result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'board.jsp'");
					script.println("</script>");
				}
			}
		}
		
			
	%>
</body>
</html>