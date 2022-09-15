<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null) {
		String cart = ""; 
		// session은 object(객체) 타입이서 cart가 객체타입이고, 
		// cookie는 text 타입이기떄문에 cookie의 cart는 String이다.
		for(String product: products) cart += product + "/";
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7); // 쿠키를 일주일간 유지
		response.addCookie(cookie);
	}
%>
<c:redirect url='cartOut.jsp'/>