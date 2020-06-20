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

${ c_c.c_date.year }

	<c:forEach items="${ corona_cases }" var="corona_case">
	=====================================================
		<p>
		
			Date : ${ corona_case.c_date } <br>
			Confirmed : ${ corona_case.c_confirmed } <br>
			Deaths : ${ corona_case.c_deaths } <br>
			Recovered : ${ corona_case.c_recovered } <br>
		
		</p>
	
	</c:forEach>

</body>
</html>