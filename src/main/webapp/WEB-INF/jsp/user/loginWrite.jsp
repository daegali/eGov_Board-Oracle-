<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/main.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/style.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/noscript.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/fontawesome-all.min.css'/>" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body class="is-preload">

	<div id="wrapper">
		<!-- Nav -->
		<!-- Main -->
		<div id="main">
			<article id="contact" class="panel">
				<form name="frm" id="frm">
					<table>
						<caption><h3>로그인 폼</h3></caption>
						<tr>
							<th><label for="userid">아이디</label></th>
							<td><input type="text" name="userid" id="userid" style="width: 100%;">
						</tr>
						<tr>
							<th><label for="pass">비밀번호</label></th>
							<td><input type="password" name="pass" id="pass"></td>
						</tr>
					</table>
					<div align="center">
						<button type="button" id="btn_login">로그인</button>
						<button type="reset">취소</button>
					</div>
				</form>
			</article>
		</div>
		<jsp:include page="/WEB-INF/jsp/cmmn/footer.jsp" />
	</div>
<!-- Scripts -->
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-1.12.4.js'/>"></script>
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-ui.js'/>"></script>  
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/user/user.js'/>"></script>   
<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/main.js'/>"/></script>		
</body>
</html>