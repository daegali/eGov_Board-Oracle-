<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-1.12.4.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-ui.js'/>"></script>  
		
		<script>
		$(function(){
			 $("#delBtn").click(function() {
					// 기능 구현
					// 1. 앞뒤 공백제거
					
					var pass = $("#pass").val();
					 pass = $.trim(pass);
					
					if( pass == "" ){
						alert("암호를 입력해주세요.");
						$("#pass").focus();
						 return false;
					}
					var sendData = "unq="+${unq}+"&pass="+pass;
					$.ajax({
						// 전송전 셋팅
						type:"POST",
						data: sendData , // json 설정 방식
						url: "boardDelete.do",
						dataType:"text",
						
						// 전송 후 세팅
						success: function( result ) { // controller -> "ok" , "fail"
							if( result == "1" ) {
								alert("삭제 완료");
								location = "boardList.do";
							} else if (result == "-1" ){						
								alert("암호가 일치하지 않습니다.");
							}else {
								alert("삭제 실패 \n 관리자에게 연락해주세요~!" +sendData+result);
							}
						},
						error: function() {
							alert("오류 발생")
						}
						
					});
			});
		});			
		</script>
</head>
<body>
	
		<table>
			<tr>
				<th>암호입력</th>
				<td><input type="password"  id="pass"></td>
				<td><button type="button"  id="delBtn" >삭제하기</button></td>
			</tr>
		</table>
     		
</body>
</html>