<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>main</a>
<%
	session.invalidate(); // session을 제거함으로 로그아웃을 표현
%>