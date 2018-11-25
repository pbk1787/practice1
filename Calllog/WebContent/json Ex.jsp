<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
</head>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $.getJSON("WEB-INF/lib/json_sample.json", function( data ) {
                    $("#gname").html(data["name"]);
                    $(data["members"]).each(function(i, member) {
                        if (i != 0) { $("#members").append(", "); }
                        $("#members").append(member);
                    });
                    $.each(data["albums"], function(key, value) {
                        $("#albums").append("<tr><td>" + key + "</td><td>" + value + "</td></tr>");
                    });
                });
            });
        </script>
        <title>JSON</title>
    </head>
    <body>
        <h2 id="gname"></h2>
        <p>��� ����: <span id="members"></span></p>
        <h3>�ٹ� ���</h3>
        <table border="1" id="albums">
        	<tr>
        		<th>�ٹ�</th>
        		<th>Ÿ��Ʋ</th>
        	</tr>
        </table>
    </body>
</html>