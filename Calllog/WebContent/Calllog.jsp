<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>전화기록 조회</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.1/flatly/bootstrap.min.css">	

<link href="./css/foundation-datepicker.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="./js/foundation-datepicker.js"></script>
	<style>
		body { background-color: #fafafa; }
		.container { margin: 30px; }
	</style>
	
</head>

<body>
<div class="container">
    <form>
	    <h2>통화기록 조회</h2>
	    <br/>
	    <div class="form-group">
			<label for="date1">날짜</label>	
			<input type="text" class="form-control" id="date1" placeholder="dd/mm/yyyy" required>
		</div>
	
		<div class="form-group">
		    <label for="exampleInputPassword1">발신 번호</label>
		    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="-를 빼고 입력하세요" required>
	    </div>

  		<div class="form-group">
	     	<label>항목선택</label>
			<table  class="form-control">
		    	<tr>
			        <td><input type="checkbox" id="checkall" /></td>
			        <td>전체선택</td>
			    </tr>
			    <tr>
		       		<td><input type="checkbox" name="chk" /></td>
			        <td>발신자국가번호</td>
			    </tr>
			    <tr>
			        <td><input type="checkbox" name="chk" /></td>
			        <td>수신자국가번호</td>
			    </tr>
			    <tr>
			        <td><input type="checkbox" name="chk" /></td>
			        <td>통화결과</td>
			    </tr>
			</table>
		</div>

  		<button type="submit" class="btn btn-primary">조회하기</button>
  
</form>
<br>
<div id="이것만" style="display:none">
<table id="tableData" class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>번호</th>
                <th>사용자ID</th>				
				<th>발신자전체번호</th>				
				<th>수신자전체번호</th>
				<th>총통화시간</th>				
				<th>등록일</th>
            </tr>    
        </thead>
        <tbody>
        	
        </tbody>
 
    </table>
</div>  






  </div>

</body>

			<script>	
				$(function(){
					//체크박스 전체 선택	
				    $("#checkall").click(function(){
				        if($("#checkall").prop("checked")){
				            $("input[name=chk]").prop("checked",true);
				        }else{
				            $("input[name=chk]").prop("checked",false);
				        }
				    })
				    
				    $("input[type=checkbox]").change(function(){
				    	$("input[type=checkbox]:checked").each(function(){
				    		if($(this).attr('id') != 'checkall'){
				    			console.log("ggg");
				    			var text = $(this).parent().next().text()
				    			$("#tableData>thead>tr").append("<th>"+text+"</th>")
				    		}		
				    	})
				    }) 
				
					$(document).ready(function(){
					    $("button").click(function(){
					        $("#이것만").toggle();
					    	/* if($("#이것만").css("display","none")){
					        	$("#이것만").css("display","block");
					        }else if($("#이것만").css("display","block")){
					        	$("#이것만").css("display","none");
					        } */
					    });
					});
				})
				
					
			</script>
			
	<script>
	$('#date1').fdatepicker();
	</script>
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/paging.js"></script> 
	<script type="text/javascript">
	            $(document).ready(function() {
	                $('#tableData').paging({limit:7});
	            });
	</script>


</html>
