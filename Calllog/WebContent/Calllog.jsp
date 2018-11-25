<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>��ȭ��� ��ȸ</title>
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
	    <h2>��ȭ��� ��ȸ</h2>
	    <br/>
	    <div class="form-group">
			<label for="date1">��¥</label>	
			<input type="text" class="form-control" id="date1" placeholder="dd/mm/yyyy" required>
		</div>
	
		<div class="form-group">
		    <label for="exampleInputPassword1">�߽� ��ȣ</label>
		    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="-�� ���� �Է��ϼ���" required>
	    </div>

  		<div class="form-group">
	     	<label>�׸���</label>
			<table  class="form-control">
		    	<tr>
			        <td><input type="checkbox" id="checkall" /></td>
			        <td>��ü����</td>
			    </tr>
			    <tr>
		       		<td><input type="checkbox" name="chk" /></td>
			        <td>�߽��ڱ�����ȣ</td>
			    </tr>
			    <tr>
			        <td><input type="checkbox" name="chk" /></td>
			        <td>�����ڱ�����ȣ</td>
			    </tr>
			    <tr>
			        <td><input type="checkbox" name="chk" /></td>
			        <td>��ȭ���</td>
			    </tr>
			</table>
		</div>

  		<button type="submit" class="btn btn-primary">��ȸ�ϱ�</button>
  
</form>
<br>
<div id="�̰͸�" style="display:none">
<table id="tableData" class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>��ȣ</th>
                <th>�����ID</th>				
				<th>�߽�����ü��ȣ</th>				
				<th>��������ü��ȣ</th>
				<th>����ȭ�ð�</th>				
				<th>�����</th>
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
					//üũ�ڽ� ��ü ����	
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
					        $("#�̰͸�").toggle();
					    	/* if($("#�̰͸�").css("display","none")){
					        	$("#�̰͸�").css("display","block");
					        }else if($("#�̰͸�").css("display","block")){
					        	$("#�̰͸�").css("display","none");
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
