<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>����2</title>

			
	</head>
	
	<body>
		<input type="hidden" id="userId" value="abcd">
		<input type="checkbox" name="hobby" value="����">
		<input type="checkbox" name="hobby" value="�">
		<input type="checkbox" name="hobby" value="���ð���">
			
	</body>
	
	<script>
	function ajaxExample(){
	    // ����� ID�� ���� �´�.
	    var userId = $("#userId").val();
	 
	    // name�� ���� üũ�ڽ��� ������ �迭�� ��´�.
	    var checkboxValues = [];
	    $("input[name='hobby']:checked").each(function(i) {
	        checkboxValues.push($(this).val());
	    });
	     
	    // ����� ID(���ڿ�)�� üũ�ڽ� ����(�迭)�� name/value ���·� ��´�.
	    var allData = { "userId": userId, "checkArray": checkboxValues };
	     
	    $.ajax({
	        url:"goUrl.do",
	        type:'GET',
	        data: allData,
	        success:function(data){
	            alert("�Ϸ�!");
	            window.opener.location.reload();
	            self.close();
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	            alert("���� �߻�~~ \n" + textStatus + " : " + errorThrown);
	            self.close();
	        }
	    });
	}
	</script>
 


	</html>