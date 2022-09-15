<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp' method='post'>
	ID : <input type='text' name='userId'/>
	PW : <input type='password' name='pw'/>
	<input type='submit' value='로그인'/> 
</form>
<%	
	String msg = request.getParameter("msg");
	//if(msg != null) out.println(msg);
%>	
<%= msg != null ? msg : "" %>