
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
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
	<table width="1000">
		<tr>
			<td colspan="3"> 
				<h1>Sách Online</h1>
			</td></tr>
		<tr>
		<td valign="top" width="200">
			<table>
				Danh Sách Các Loại
				<% 
				loaidao loai=new loaidao();
					for(loaibean l: loai.getloai()){%>
						<tr><td>
							<a href="htsach.jsp?ml=<%=l.getMaLoai()%>">
							<%=l.getTenLoai()%></a>
						</td>
					</tr>
					<%
					}
				%>
			</table>
		
		</td>
		<td valign="top" width="600"> 
			<table width="600">Danh Sách Sách
		   		<%  sachdao sdao= new sachdao();
		   		    ArrayList<sachbean> dssach= sdao.getsach();
		   		    
		   		    if (request.getParameter("search")!=null){
		   		    	dssach = sdao.timKiemTheoTen(dssach, request.getParameter("search"));
		   		    	if (dssach.isEmpty()) {
		   		 %>   		
		   		 			<h4>Không có sách tên <%=request.getParameter("search")%></h4>
		   		 <%   	}
		   		    }
		   		    else if (request.getParameter("ml")!=null){
		   		    	dssach = sdao.timKiemTheoLoai(dssach, request.getParameter("ml"));
		   		    	
		   		    	if (dssach.isEmpty()) {
		   		 %>   		
		   		   		 			<h4>Không có sách loại <%=request.getParameter("ml")%></h4>
		   		 <%   	
		   		   		 }
		   		    }
		   		    
			   		    int n=dssach.size();
			   		    for(int i=0;i<n;i++){
			   		    	sachbean s = dssach.get(i);
			   		%>
			   		     <tr>
				   		      <td>
					   		  	 <img src="<%=s.getAnh() %>"> <br>
					   		     <%=s.getTenSach() %> <br>
					   		     <%=s.getTacGia() %><br>
					   		     <%=s.getGia() %><br>
					   		  </td>
				   		   
				   		   	  <% i++; 
				   		   	  if(i<n){
				   		      		s = dssach.get(i);%>
				   		     		<td>
							   		    <img src="<%=s.getAnh() %>"> <br>
							   		    <%=s.getTenSach()%> <br>
							   	     	<%=s.getTacGia() %><br>
							   		    <%=s.getGia() %><br>
						   		     </td>
					   		
				   		     <%} %>
				   		  </tr>
				   	<%} %>
				   	
		   		   
	   		 </table>
	
			
			<td valign="top" width="200"> Tìm Kiếm 
				<form>
					<input name="search" type="text" placeholder="Tìm kiếm tên sách ở đây"/>
					<button>TimKiem</button>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>