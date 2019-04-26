<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.user.User"
    pageEncoding="UTF-8"%>
    <%!
    	String printCalendar()
    	{
    		String s = "";
    		for(int i = 1;i <= 9;i++)
    		{
    			for(int j = 1; j <= 9;j++)
    			{
    				if(i>=j)
    				s += i+"*"+j+"="+i*j+"&nbsp;&nbsp;&nbsp;&nbsp;";
    			}
    			s += "<br>";
    		}
    		return s;
    	}
    %>
  	<jsp:useBean id="loginUser" class="com.user.User" scope="page"/>
    <jsp:setProperty property="username" name="loginUser" />
    <jsp:setProperty property="password" name="loginUser" />

    用户名：<jsp:getProperty property="username" name="loginUser"/><br>

    密码：<jsp:getProperty property="password" name="loginUser"/><br>
 
<p>
  今天的日期是<%= (new java.util.Date()).toLocaleString() %>
</p>
<h1>九九乘法表</h1>
<hr>
<%= printCalendar()%>
