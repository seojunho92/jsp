<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
  	Object cartObj = session.getAttribute("cart");

	if(products != null && products.length > 0) {
		List<String> cart = new ArrayList<>();
		
		for(String product: products) {
			cart.add(product);
		}	
		
		if(cartObj != null) {
			List<String> cartList = (List<String>)cartObj;
			for(String product: cartList) {
				cart.add(product);
			}
		}
		
		session.setAttribute("cart", cart);
%>
		<c:redirect url='cartOut.jsp'/>
<%		
	} else {
%>
		<c:redirect url='main.jsp'>
			<<c:param name='msg' value='구매하실 물품을 체크하세요.'/>
		</c:redirect>
<%  
	}
%>