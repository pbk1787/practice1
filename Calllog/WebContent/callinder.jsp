<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>악짜증나</title>

<link href="./css/foundation-datepicker.css" rel="stylesheet" type="text/css">

</head>

<body>


  <h2>날짜</h2>
  <input type="text"  value="" id="demo-1">
  
  
  <label for="date1">날짜</label>
	<div class="input-group date demo-1">
	  <input type="text" class="form-control" id="date1" placeholder="yyyy/mm/dd" required>
	</div>
 
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
<script src="./js/foundation-datepicker.js"></script> 

<script>
$('#date1').fdatepicker();
</script>

</body>
</html>
