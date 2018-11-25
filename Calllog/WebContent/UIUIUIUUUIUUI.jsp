<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>실험5</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.1/flatly/bootstrap.min.css">
	


	<link href="./css/foundation-datepicker.css" rel="stylesheet">
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="./js/foundation-datepicker.js"></script>
		
	<style>
		body { background-color: #fafafa; }
		.container { margin: 30px; }
	</style>
	<script>	//체크박스 전체 선택	
				$(document).ready(function(){
				    $("#checkall").click(function(){
				        if($("#checkall").prop("checked")){
				            $("input[id=chk]").prop("checked",true);
				        }else{
				            $("input[id=chk]").prop("checked",false);
				        }
				    })
				})
			</script>
</head>


<%
	String date = request.getParameter("date"); 
	String phone = request.getParameter("phone"); 

%>


<body>
  <div class="container">
    <form action="coding.jsp">
    <div class="form-group">
		<label for="date1">날짜</label>	
		<input class="form-control" id="date1" name="date" placeholder="dd/mm/yyyy" required>
	</div>
	
  <div class="form-group">
    <label for="exampleInputPassword1">발신 번호</label>
    <input class="form-control" id="exampleInputPassword1" name="phone" placeholder="-를 빼고 입력하세요" required>
  </div>
  
  
  
  <div class="form-group">
    <label>항목선택</label>
    <table class="form-control">
	    <tr>
	        <td><input type="checkbox" id="checkall" name="check1" /></td>
	        <td>전체선택</td>
	    </tr>
	    <tr>
	        <td><input type="checkbox" id="chk" name="check2"/></td>
	        <td>발신자국가번호</td>
	    </tr>
	    <tr>
	        <td><input type="checkbox" id="chk" name="check3"/></td>
	        <td>수신자국가번호</td>
	    </tr>
	    <tr>
	        <td><input type="checkbox" id="chk" name="check4"/></td>
	        <td>통화결과</td>
	    </tr>
	</table>
  </div>

  <button type="submit" class="btn btn-primary">조회하기</button>

  
</form>
  </div>

</body>


	<script>
	$('#date1').fdatepicker();
	</script>


</html>
