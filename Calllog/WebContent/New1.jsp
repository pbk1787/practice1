<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>실험2</title>

			
	</head>
	
	<body>
		<input type="hidden" id="userId" value="abcd">
		<input type="checkbox" name="hobby" value="독서">
		<input type="checkbox" name="hobby" value="운동">
		<input type="checkbox" name="hobby" value="전시관람">
			
	</body>
	
	<script>
	function ajaxExample(){
	    // 사용자 ID를 갖고 온다.
	    var userId = $("#userId").val();
	 
	    // name이 같은 체크박스의 값들을 배열에 담는다.
	    var checkboxValues = [];
	    $("input[name='hobby']:checked").each(function(i) {
	        checkboxValues.push($(this).val());
	    });
	     
	    // 사용자 ID(문자열)와 체크박스 값들(배열)을 name/value 형태로 담는다.
	    var allData = { "userId": userId, "checkArray": checkboxValues };
	     
	    $.ajax({
	        url:"goUrl.do",
	        type:'GET',
	        data: allData,
	        success:function(data){
	            alert("완료!");
	            window.opener.location.reload();
	            self.close();
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
	            self.close();
	        }
	    });
	}
	</script>
 


	</html>