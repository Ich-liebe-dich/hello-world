<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="loginUser" class="com.user.User" scope="page" />
    <jsp:useBean id="logicUser" class="com.user_logic.UserLogic" scope="page" />
    <jsp:setProperty property="*" name="loginUser" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%
	if(logicUser.userLogin(loginUser))
	{
		session.setAttribute("loginUser", loginUser.getUsername());
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}
	else
	{
		response.sendRedirect("login_fail.jsp"); 
	}
%>
</body>
</html>
