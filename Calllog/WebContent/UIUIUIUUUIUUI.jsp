<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>����5</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.1/flatly/bootstrap.min.css">
	


	<link href="./css/foundation-datepicker.css" rel="stylesheet">
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="./js/foundation-datepicker.js"></script>
		
	<style>
		body { background-color: #fafafa; }
		.container { margin: 30px; }
	</style>
	<script>	//üũ�ڽ� ��ü ����	
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
		<label for="date1">��¥</label>	
		<input class="form-control" id="date1" name="date" placeholder="dd/mm/yyyy" required>
	</div>
	
  <div class="form-group">
    <label for="exampleInputPassword1">�߽� ��ȣ</label>
    <input class="form-control" id="exampleInputPassword1" name="phone" placeholder="-�� ���� �Է��ϼ���" required>
  </div>
  
  
  
  <div class="form-group">
    <label>�׸���</label>
    <table class="form-control">
	    <tr>
	        <td><input type="checkbox" id="checkall" name="check1" /></td>
	        <td>��ü����</td>
	    </tr>
	    <tr>
	        <td><input type="checkbox" id="chk" name="check2"/></td>
	        <td>�߽��ڱ�����ȣ</td>
	    </tr>
	    <tr>
	        <td><input type="checkbox" id="chk" name="check3"/></td>
	        <td>�����ڱ�����ȣ</td>
	    </tr>
	    <tr>
	        <td><input type="checkbox" id="chk" name="check4"/></td>
	        <td>��ȭ���</td>
	    </tr>
	</table>
  </div>

  <button type="submit" class="btn btn-primary">��ȸ�ϱ�</button>

  
</form>
  </div>

</body>


	<script>
	$('#date1').fdatepicker();
	</script>


</html>
