<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	response.sendRedirect("1.b.jsp"); 
	// A와 B의 request가 다르다. (업무가 다르다.)
	// 회원가입 후 메인으로 넘어가는 상황에서 적당하다. (데이터의 공유를 하지않는다.)
%>