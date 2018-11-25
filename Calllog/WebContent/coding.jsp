<%@page import="java.util.Set"%>
<%@page import="java.io.Writer"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	Map<String, String[]> paramMap = request.getParameterMap();
	
	Set<String> key = paramMap.keySet();
	
	for(String s : key){
		out.println(s+","+paramMap.get(s)[0]+"<br>");		
	}
%>

</body>

</html>