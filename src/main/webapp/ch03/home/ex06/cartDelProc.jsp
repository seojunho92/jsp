<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	Object cartObj = session.getAttribute("cart");
	
	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;
		if(cart.size() > 0) {
			for(String product: cart) {
				for(String productDel: products) {
					cart.remove(productDel);
				}	
				break;
			}
			session.setAttribute("cart", cart);
		}
	}
%>
<c:redirect url='cartOut.jsp'/>