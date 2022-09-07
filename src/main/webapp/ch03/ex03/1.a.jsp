<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
	// dispatcher : A페이지가 가지고있는 request, response를 그대로 B페이지로 전달한다.
	// 자주사용하지 않고 <jsp:forward>를 사용한다.
%>