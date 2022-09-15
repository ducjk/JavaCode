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
	 
	 <table border='1' width ="1000" align="center" cellpadding="0" cellspacing="0">
	 	<%for(int i=2;i<=9;i++){ %>
	 		<tr>
	 		<% for(int j = 1; j <= 10; j++ ){ %>
    		    <td width="100" height="40" align="center"><%=i %> x <%=j %> = <%=i*j %></td>
    	    <% } %>
    	    </tr>
    	 <% } %>
	 </table>
	
</body>
</html>