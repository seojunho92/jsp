<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지2"); 
	request.setAttribute("two", "리퀘스트2");  
	session.setAttribute("three", "세션2"); 
	application.setAttribute("four", "애플리케이션2"); 
%>
<c:redirect url='1.scopeB.jsp'/> 
<!-- 1.scopeA.jsp와 2.scopeA.jsp의 session,application의 name값이 같을경우
	덮어쓰기 한다. -->