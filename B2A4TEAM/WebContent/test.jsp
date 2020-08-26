<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String pre =request.getParameter("predict");
%>
<h1>군집은 <%=pre%>입니다.</h1>
</body>
</html>