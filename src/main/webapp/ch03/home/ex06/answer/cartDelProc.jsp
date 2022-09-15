<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	Object cartObj = session.getAttribute("cart");
	
	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;
		
		if(products != null && products.length > 0) {
			for(String product: products)
				cart.remove(product);
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
			<!-- c:set 현재 페이지에서만 사용가능한 Attribute -->
<%			
		}
	} else {
%>
		<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/> <!-- value값에 만들어둔 Attribute를 넣는다. -->
</c:redirect>