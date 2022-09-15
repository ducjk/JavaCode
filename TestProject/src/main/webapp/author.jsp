<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Java nang cao</title>
	<link rel="stylesheet" type="text/css" href="./assets/css/main.css">
</head>
<body>
	 <h1 class="title">BẢNG CỬU CHƯƠNG</h1>
	 
	 <div class="list-item">
	 	<%for(int i=2;i<=9;i++){ %>
	 		<% for(int j = 1; j <= 10; j++ ){ %>
    		     <span class="item"><%=i %> x <%=j %> = <%=i*j%></span>
    	    <% } %>
    	 <% } %>
	 </div>
	
</body>
</html>