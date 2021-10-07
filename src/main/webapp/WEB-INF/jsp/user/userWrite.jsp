<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<!-- Scripts -->
	<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-1.12.4.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery-ui.js'/>"></script>  
     <script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/user/user.js'/>"></script>   
	
<script>
$( function (){
	$("#birth").datepicker({
		changeMonth: true,
		changeYear: true
	});
});
</script>
</head>
<body class="is-preload">

	<div id="wrapper">
		<!-- Nav -->
		<jsp:include page="/WEB-INF/jsp/cmmn/header.jsp" />
		<!-- Main -->
		<div id="main">
			<article id="contact" class="panel">
				<form name="frm" id="frm">
					<table>
						<caption><h3>회원가입 폼</h3></caption>
						<tr>
							<th><label for="userid">아이디</label></th>
							<td><input type="text" name="userid" id="userid">
								<button type="button"  id="btn_idcheck">중복체크</button></td>
						</tr>
						<tr>
							<th><label for="pass">비밀번호</label></th>
							<td><input type="password" name="pass" id="pass"></td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td><input type="text" name="name" id="name"></td>
						</tr>
						<tr>
							<th><label for="gender">성별</label></th>
							<td>
								<select class="form-control form-select"  name="gender">
                                               <option value="M"  id="gender">Male</option>
                                              <option value="F"  id="gender"  >Female</option>
                                </select>
						</tr>
						<tr>
							<th><label for="birth">생년월일</label></th>
							<td><input type="text" name="birth" id="birth" readonly="readonly"></td>
						</tr>
						<tr>
							<th><label for="phone">연락처</label></th>
							<td><input type="text" name="phone" id="phone"> <small>(예 : 010-1234-1234)</small></td>
						</tr>
						<tr>
							<th><label for="zipcode">주소</label></th>
							<td><input type="text" name="zipcode" id="zipcode">
								<button type="button">우편번호찾기</button>
						        <input type="text" name="address" id="address"></td>
						</tr>
					</table>
					<div align="center">
						<button type="button" id="btn_submit">저장</button>
						<button type="reset">취소</button>
					</div>
				</form>
			</article>
		</div>
		<jsp:include page="/WEB-INF/jsp/cmmn/footer.jsp" />
	</div>
	
</body>
</html>