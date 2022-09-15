<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", "");
	cookie.setMaxAge(0); // ()초단위 : 0초 = 바로사라진다.
			
	response.addCookie(cookie);
%>