<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지"); // 하나의 페이지에서 쓰는 정보. 페이지가 끝나면 사라진다. (name, value)
	request.setAttribute("two", "리퀘스트");  // 하나의 업무내에서 쓰는 정보. 다른 페이지에서도 유지된다.
	session.setAttribute("three", "세션"); // 로그아웃 전까지 유지된다.(ex> 장바구니)
	application.setAttribute("four", "애플리케이션"); // 앱종료 전까지 유지된다.
%>
<c:redirect url='1.scopeB.jsp'/>