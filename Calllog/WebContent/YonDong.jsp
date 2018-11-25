<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*" %> 

	<%
	Connection conn = null; 
	try{ 
		String url = "jdbc:sqlserver://58.229.141.124:61433;databaseName=OTO_CALLLOG";
		String id = "backoffice_test_admin"; // 사용자계정 
		String pw = "!@hyeongil."; 
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		conn=DriverManager.getConnection(url,id,pw); 
		out.println("제대로 연결되었습니다."); 
		
		}
	catch(Exception e){ 
			e.printStackTrace(); 
			out.println("XX");
		} 
	%>
	


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>