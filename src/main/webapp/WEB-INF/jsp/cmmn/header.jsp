<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<%
	String USERID = (String) session.getAttribute("SessionUserID");
%>		
</head>
<body>
		<nav id="nav">
				<a href="main.do" class="icon solid fa-home"><span>홈</span></a>
				<a href="boardList.do" class="icon solid fa-folder"><span>게시판</span></a>
				
				<%
					if(USERID == null) {
				%>
				
				<a href="userWrite.do" class="icon solid fa-envelope"><span>회원가입</span></a>
				<a href="loginWrite.do" class="icon brands fa-twitter"><span>로그인</span></a>
				
				<%}else{
					
					%>
					
						<a href="userModify.do" class="icon solid fa-envelope"><span>회원정보</span></a>
						<a href="logout.do" class="icon brands fa-twitter"><span>로그아웃</span></a>
				
				<%
				}
				%>
				
				
				<a href="https://github.com/daegali" class="icon brands fa-twitter"><span>GIT</span></a>
		</nav>
		
		
</body>
</html>