<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>();
	
	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/"); // "/"를 구분자로 글자를 쪼갠다.
			while(st.hasMoreTokens()) // 토큰이 있으면 반복문 실행
				cart.add(st.nextToken()); // cart에 구분자로 나눈 토큰을 저장
		}
	}
	
	if(cart.size() > 0) {
%>
		<ul>
<%
			for(String product: cart) {
%>
				<li><%= product %></li>
<% 				
			}
%>		
		</ul>
<%
	} else out.println("물건이 없습니다.");
%>