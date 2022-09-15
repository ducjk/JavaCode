<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <form action="ktdn.jsp" method="post">
       Username <input name="txtun" type="text" value="" placeholder = "Username"/> <br>
       Password <input name="txtpass" type="password" placeholder = "Password" value=""/> <br>
       <input name="butdn" type="submit" value="login"/>
    </form>
    <% if (request.getParameter("kt") != null){
    	out.print("Dang nhap sai");
    }
   	%>

</body>

</html>