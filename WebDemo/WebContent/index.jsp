<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>AJax</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	  	<div class="container-fluid">
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="#">Trang chủ</a></li>
		      <li><a href="#">Giỏ hàng</a></li>
		      <li><a href="#">Thanh toán</a></li>
		      <li><a href="#">Lịch sử thanh toán</a></li>
		    </ul>
	  	</div>
	</nav>
	<h2>Thông tin sinh viên</h2>
	<table width="1000">
		<tr>
			<td width="300">
				<a href="index.jsp?msv=sv1">Huỳnh Trọng Đức</a> <hr>
				<a href="index.jsp?msv=sv2">Phan Công Trung</a> <hr>
				<a href="index.jsp?msv=sv3">Đặng Phước Hoàng Thiện</a> <hr>
			</td>
			<td>
				<% String masv = request.getParameter("msv");
					if (masv == null){
						out.print("Ban chay lan dau");
					}else { %>
				Thong tin sinh vien co ma <%=masv %>
				<% } %>
			</td>
		</tr>
	</table>
</body>
</html>