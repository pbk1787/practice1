<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*" %> 

	<%
	Connection conn = null; 
	try{ 
		String url = "jdbc:sqlserver://58.229.141.124:61433;databaseName=OTO_CALLLOG";
		String id = "backoffice_test_admin"; // ����ڰ��� 
		String pw = "!@hyeongil."; 
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		conn=DriverManager.getConnection(url,id,pw); 
		out.println("����� ����Ǿ����ϴ�."); 
		
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