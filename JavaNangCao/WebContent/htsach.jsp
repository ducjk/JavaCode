<%@page import ="dao.loaidao" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>AJax</title>
	<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table	width="1000">
		<tr>
			<td colspan="3"><h1>SÁCH ONLINE</h1></td>
		</tr>
		<tr>
			<td valign="top" width="200">Danh sách các loại
				<% 
					loaidao loai = new loaidao;
					for (loaibean l: loai.getloai()){
						
					}
				%>
			</td>
			<td valign="top" width="600">Danh sách các sách</td>
			<td valign="top" width="200">Tìm kiếm</td>
		</tr>
	</table>
</body>
</html>