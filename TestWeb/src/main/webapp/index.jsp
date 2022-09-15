<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Form Sign Up</title>
	<link rel="stylesheet" type="text/css" href="./assets/css/main.css">
</head>
<body>
	<div class="app">
		<form id="form-sign-up">
			<h4 class="title">Đăng ký</h4>
			
			<div class="form-sign-up">
				<div class="form-sign-up-1">
					<input class="base-input txtinput" name="username" type="text" placeholder="Username"/>
					<input class="base-input txtinput" name="password" type="password" placeholder="Nhập mật khẩu"/>
					<input class="base-input txtinput" name="confirm-password" type="password" placeholder="Nhập lại mật khẩu"/>
					<input class="base-input txtinput" name="email" type="email" placeholder="Nhập địa chỉ Email"/>
					<input class="base-input txtinput" name="confirm-password" type="email" placeholder="Nhập lại địa chỉ Email"/>
				</div>
                <div class="form-sign-up-2">
					<input class="base-input txtinput" name="first-last-name" type="text" placeholder="Nhập họ và tên"/>
                    <select class="base-input selection">
                        <option>Giới tính</option>
                        <option>Nam</option>
                        <option>Nữ</option>
                    </select>
                    <div class="date-time">
                        <select class="base-input selection">
                            <option>Ngày sinh</option>
                            <% for (int i = 1; i <= 30; i++) { %>
                            	<option><%=i %></option>
                            <% } %>
                        </select>
                        <select class="base-input selection">
                            <option>Tháng</option>
                            <% for (int i = 1; i <= 12; i++) { %>
                            	<option><%=i %></option>
                            <% } %>
                        </select>
                        <select class="base-input selection">
                            <option>Năm</option>
                            <% for (int i = 2020; i >= 1960; i--) { %>
                            	<option><%=i %></option>
                            <% } %>
                        </select>
                    </div>
                    <select class="base-input selection">
                        <option>
                            Tỉnh/Tp
                        </option>
                        <option>Huế</option>
                        <option>Đà Nẵng</option>
                    </select>
                    <input class="base-input txtinput verification" type="text" name="active" class="active" placeholder="Nhập mã xác nhận"/>
                </div>
			</div>
			<button class="submit">Đăng ký</button>
		</form>
	</div>
</body>
</html>