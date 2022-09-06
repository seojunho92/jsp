<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%> <!-- 톰켓에게 안내를 한다. -->
<%-- directive : jsp 주서 --%>
<%	//scriptlet : java 영역
	int num1 = 1;
	int num2 = 2;
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- expression : 자바 데이터를 사용할때 -->