<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals("java") && password.equals("java")) {
		session.setAttribute("id", id);
		session.setAttribute("password", password);
%>
		<c:redirect url='main.jsp'/>
<% 	
	} else {
%>
		<c:redirect url='login.jsp?msg=input login or password.'/>
<%		
	}
%>