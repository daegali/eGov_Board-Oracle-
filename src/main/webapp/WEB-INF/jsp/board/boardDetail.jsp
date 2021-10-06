<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Astral by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		 <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/main.css'/>"/>
	     <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/noscript.css'/>"/>
	     <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/fontawesome-all.min.css'/>"/>
		<style>
			th {
				font-weight: bold ;
			}
		</style>
	</head>
		<!--Jstl 문법 content \\n 을 찾아서 <br>로 바꿔라 -->
	<%-- <%pageContext.setAttribute("newline", "\n"); %>
	<c:set var ="content" value="${fn:replace(boardDetail.content, newline ,'<br>' ) }"/> --%> 
	<body class="is-preload">
		<!-- Wrapper-->
			<div id="wrapper">
				<!-- Nav -->
					<nav id="nav">
						<a href="boardWrite.do" class="icon solid fa-home"><span>홈</span></a>
						<a href="boardList.do" class="icon solid fa-folder"><span>글목록</span></a>
						<a href="boardWrite.do#contact" class="icon solid fa-envelope"><span>글쓰기</span></a>
						<a href="https://github.com/daegali" class="icon brands fa-twitter"><span>GIT</span></a>
					</nav>

				<!-- Main -->
					<div id="main">
						<!-- 글쓰기 -->
							<article id="contact" class="panel">
								<header>
									<h5 align="center">게시판 자세히 보기</h5>
								</header>
								<form name="frm"  id="frm" >
									<div>
										<div class="row">
											<div class="col-6 col-12-medium">
											<lebel for="title">제목</lebel>
												<input type="text" name="title"  id="title" placeholder="제목"  value="${boardDetail.title}" readonly="readonly"/>
											</div>
											<div class="col-12">
											<lebel for="name">글쓴이</lebel>
												<input type="text" name="name"  id="name" placeholder="글쓴이"  value="${boardDetail.name }"  readonly="readonly"/>
											</div>
											<div class="col-12">
											<lebel for="content">내용</lebel>
											 <textarea name="content"   id="content"  placeholder="내용" rows="6"  readonly="readonly">${boardDetail.content }</textarea>
											</div>
											<div class="col-12">
											<lebel for="regdate">등록일</lebel>
												<input type="text" name="regdate"  id="regdate" placeholder="등록일"  value="${boardDetail.rdate }"  readonly="readonly"/>
											</div>
											<div class="col-12"  align="center">
												<input type="button"  onclick="location='boardList.do'" value="목록" />			
												<input type="button"  onclick="location='boardModifyWrite.do?unq=${boardDetail.unq}'" value="수정" />
												<input type="button"  onclick="location='passWrite.do?unq=${boardDetail.unq}'" value="삭제" />
											</div>
										</div>
									</div>
								</form>
							</article>
					</div>

				<!-- Footer -->
					<div id="footer">
						<ul class="copyright">
							<li>&copy; Untitled.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>

			</div>

		<!-- Scripts -->	
		 	<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/jquery.min.js'/>"></script> 
     		<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/browser.min.js'/>"/></script>
			<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/breakpoints.min.js'/>"/></script>
			<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/util.js'/>"/></script>
			<script type="text/javascript" src="<c:url value='/css/egovframework/assets/js/main.js'/>"/></script>
	</body>
</html>