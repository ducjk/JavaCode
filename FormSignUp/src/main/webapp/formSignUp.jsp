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
			<div class="fast-sign-up">
				<span>Đăng ký nhanh qua Facebook</span>
				<a class="link-to-fb">
					<img />
				</a>
				<p class="pregister">Đăng ký mời bằng tài khoản Tailieu.vn</p>
				<p class="description">Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ Tailieu.vn</p>
			</div>
			
			<div class="form-sign-up">
				<div class="form-sign-up-1">
					<input class="txtinput" name="username" type="text" placeholder="Username"/>
					<input class="txtinput" name="password" type="password" placeholder="Nhập mật khẩu"/>
					<input class="txtinput" name="confirm-password" type="password" placeholder="Nhập lại mật khẩu"/>
					<input class="txtinput" name="email" type="email" placeholder="Nhập địa chỉ Email"/>
					<input class="txtinput" name="confirm-password" type="email" placeholder="Nhập lại địa chỉ Email"/>
				</div>
                <div class="form-sign-up-2">
					<input class="txtinput" name="first-last-name" type="text" placeholder="Nhập họ và tên"/>
                    <select class="selection">
                        <option>Giới tính</option>
                        <option>Nam</option>
                        <option>Nữ</option>
                    </select>
                    <div class="date-time">
                        <select class="selection">
                            <option>Ngày sinh</option>
                            <% for (int i = 1; i <= 30; i++) { %>
                            	<option><%=i %></option>
                            <% } %>
                        </select>
                        <select class="selection">
                            <option>Tháng</option>
                            <% for (int i = 1; i <= 12; i++) { %>
                            	<option><%=i %></option>
                            <% } %>
                        </select>
                        <select class="selection">
                            <option>Năm</option>
                            <% for (int i = 2020; i >= 1960; i--) { %>
                            	<option><%=i %></option>
                            <% } %>
                        </select>
                    </div>
                    <select class="selection">
                        <option>
                            Tỉnh/Tp
                        </option>
                        <option>Huế</option>
                        <option>Đà Nẵng</option>
                    </select>
                    <input class="txtinput verification" type="text" name="active" class="active" placeholder="Nhập mã xác nhận"/>
                </div>
			</div>
			
		</form>
	</div>
</body>
</html>