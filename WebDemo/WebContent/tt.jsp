<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Sum of two number</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div id="main">
		<form class="box" >
		<div class="form_title">
			<h3 class="title">
				Phép tính Công, Trừ, Nhân, Chia
			</h3>
		</div>
			<div class="form_input">
				<div class="input base_input">
					Nhập Input1: <input  class="input_form " name="a" type="number" placeholder="Nhập số" />
					Nhập Input2: <input class="input_form " name="b" type="number" placeholder="Nhập số" />
				</div>
				
				<div class="base_input">
					<input name="tinh" type="radio" value="cong"/>Cộng
					<input name="tinh" type="radio" value="tru"/>Trừ
					<input name="tinh" type="radio" value="nhan"/>Nhân
					<input name="tinh" type="radio" value="chia"/>Chia
	
				</div>
				
				<div class="res  base_input">
				<button class="submit">Kết quả</button>
				
	
			</div>
		</div>	
	</form>
		
			<% 
			 String a=request.getParameter("a");
			 String b=request.getParameter("b"); 
			 String tinh=request.getParameter("tinh");
			 if (a != null && b!= null){
				 int so1 = Integer.parseInt(a);
				 int so2 = Integer.parseInt(b);
				int r=0;
				if(tinh.equals("cong")){
					r = so1 + so2;
				}else if(tinh.equals("tru")){	
					r = so1 - so2;
				}else if(tinh.equals("nhan")){
					r = so1 * so2;
				}else {
					r = so1 / so2;
				}
				out.print(r); 
			 }else {
				 out.print("Chua nhap so");
				 
			 }
			 
			
				%>
	</div>
</body>
</html>