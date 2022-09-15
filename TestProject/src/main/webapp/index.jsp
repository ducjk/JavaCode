<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Java nang cao</title>
</head>
<body>
	<table border='1' width ="1000" align="center" cellpadding="0" cellspacing="0">
      <tr bgcolor="red">
          <td colspan="3"> Menu ngang </td>
      </tr>
    <tr>
          <td width="200" valign="top" > 
             <a href="https://tiktok.com" target="_blank">Trang chủ</a> <hr>
             Đọc báo <hr>
             <a href="./assets/text/demo.docx">Tải bài giảng</a> <hr>
             
             </td>
          <td width="800"> 
          	<img src="./assets/image/anh2.jpg"/>
          	<hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr> </td>
          <td width="200">
          
          	<form method="post" action="author.jsp">
          		<label>User name</label>
          		<input name="user-name" type="text" /> <br>
          		<label>Password</label>
          		<input name="password" type="password"/> <br>
          		<input name="submit" type="submit" value="Login"/> <br>
          		
          		<label>Up anh</label>
          		<input type="file" name="image" /> <br>
          		
          		<label>Quyen quan tri</label>
          		<select name="rule">
          			<option>Admin</option>
          			<option>User</option>
          		</select>
          		
          		
          	</form>
          </td>
    </tr>
    <tr>
        <td colspan="3"> Ban quyen </td>
</tr>
   </table>
</body>
</html>