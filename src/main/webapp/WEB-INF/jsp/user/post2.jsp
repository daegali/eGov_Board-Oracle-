<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:100%, text-align:center;">		
		<select name="address"  id="address">			
				<c:forEach  var="result"  items="${resultList }">
						<option value="${result.addr}">${result.addr }</option>
				</c:forEach>		
		</select>	
		<button type="button" id="btn_send">적용</button>
</div>
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-1.12.4.js'/>"></script>
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-ui.js'/>"></script>  
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/user/user.js'/>"></script>   		
</body>
</html>