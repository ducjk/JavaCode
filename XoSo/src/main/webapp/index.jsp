<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
		
	</style>
</head>
<body>
	<% 
		Calendar calendar = Calendar.getInstance();
		int day = calendar.get(Calendar.DATE);
		int month = calendar.get(Calendar.MONTH) + 1;
		int year = calendar.get(Calendar.YEAR);
	%>
	<form>
		<div>
			<div align="right">
				<i>Hôm nay, ngày <%= day %> tháng <%= month %> năm <%= year %></i>
			</div> <hr>
			<span>Chọn ngày</span>
			
			<select name="day">
				<option>Ngày</option>
				<% for (int i=1; i<=31; i++) { %>
					<option value=<%=i %> <%= (i == day)? "selected" : "" %>><%= i %></option>
				<% } %>	
			</select>
			
			<select name="month">
				<option>Tháng</option>
				<% for (int i=1; i<=12; i++) { %>
					<option value=<%=i %> <%= (i == month)? "selected" : "" %>><%= i %></option>
				<% } %>	
			</select>
			
			<select name="year">
				<option>Năm</option>
				<% for (int i=year; i>=year - 10; i--) { %>
					<option value=<%=i %> <%= (i == year)? "selected" : "" %>><%= i %></option>
				<% } %>	
			</select>
		</div>
	</form>
</body>
</html>