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
	<form>
		<label>So thu nhat</label> <input name="number1" type="number"/> <br>
		<label>So thu hai</label> <input name="number2" type="number"/> <br>
		<label>Chon phep tinh:</label> <br>
			<label for="calc1">+</label> <input id="calc1" name="calculator" type="radio" value="+"/>
			<label for="calc2">-</label> <input id="calc2" name="calculator" type="radio" value="-"/>
			<label for="calc3">*</label> <input id="calc3" name="calculator" type="radio" value="*"/>
			<label for="calc4">/</label> <input id="calc4" name="calculator" type="radio" value="/"/>
		<hr>
		<button class="submit">Submit</button>
		<br>
		
		<h2>
			<%  String number1 = request.getParameter("number1"); 
			String number2 = request.getParameter("number2");
			String calculator = request.getParameter("calculator");
			
			if (number1 == null && number2 ==null){
				out.print("Nhap so can tinh");
			}else{ %>
			
			<% 
				int so1 = Integer.parseInt(number1);
				int so2 = Integer.parseInt(number2);
				if (calculator == null)
					out.print("Chon phep tinh can tinh.");
				else {
					switch(calculator){
					case "+":
						int sum = so1 + so2;
						out.println("Ket qua cua phep cong la: "); 
						out.print(so1);
						out.print(" + ");
						out.print(so2);
						out.print(" = ");
						out.print(sum);
						break;	
					case "-":
						int minus = so1 - so2;
						out.print("Ket qua cua phep tru la: "); 
						out.print(so1);
						out.print(" - ");
						out.print(so2);
						out.print(" = ");
						out.print(minus);
						break;
					case "/":
						int div = so1 / so2;
						out.print("Ket qua cua phep chia la: "); 
						out.print(so1);
						out.print(" / ");
						out.print(so2);
						out.print(" = ");
						out.print(div);
						break;
					case "*":
						int multiple = so1 * so2;
						out.print("Ket qua cua phep nhan la: "); 
						out.print(so1);
						out.print(" * ");
						out.print(so2);
						out.print(" = ");
						out.print(multiple);
						break;
				
				}
				}
				
			
			%>
			<% } %>
		</h2>
	</form>
</body>
</html>