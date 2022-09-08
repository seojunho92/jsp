<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp' method='post'>
	<input type='text' name='id'/>
	<input type='password' name='password'/>
	<input type='submit' value='로그인'/> 
</form>
<%	
	String msg = request.getParameter("msg");
%>	
<%= msg != null ? msg : "" %>