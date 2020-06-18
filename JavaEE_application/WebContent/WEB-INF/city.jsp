<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String str = ( String ) request.getAttribute( "str" );
		
		out.print(str);
		
		/*
		 while(cursor.next()){
			out.print("=======================================");

			out.print("date : " + cursor.getObject(1).toString());
			out.print("confirmed : " + cursor.getObject(2).toString());
			out.print("deaths : " + cursor.getObject(3).toString());
			out.print("recovered : " + cursor.getObject(4).toString());
		} 
		*/
	
	%>

</body>
</html>