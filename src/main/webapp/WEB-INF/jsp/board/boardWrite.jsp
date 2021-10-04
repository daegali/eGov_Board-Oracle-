<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<body class="is-preload">
	
		<!-- Wrapper-->
			<div id="wrapper">
				<!-- Nav -->
					<nav id="nav">
						<a href="#" class="icon solid fa-home"><span>홈</span></a>
						<a href="boardList.do#list" class="icon solid fa-folder"><span>글목록</span></a>
						<a href="boardWrite.do#contact" class="icon solid fa-envelope"><span>글쓰기</span></a>
						<a href="https://github.com/daegali" class="icon brands fa-twitter"><span>GIT</span></a>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Me -->
							<article id="home" class="panel intro">
								<header>
									<h1>최일광</h1>
									<p>Senior Astral Projectionist</p>
								</header>
								<a href="#work" class="jumplink pic">
									<span class="arrow icon solid fa-chevron-right"><span>See my work</span></span>
								<img src="<c:url value='/images/egovframework/example/me.jpg'/>" alt=""/>
								</a>
							</article>

						<!-- Work -->
							<article id="list" class="panel">
								<header>
									<h4 align="center">글목록</h4>
								</header>
								<section>
									<div class="row">
										<table>
											<tr>
												<th width="15%">번호</th>
												<th width="30%" align="left">제목</th>
												<th width="15%">글쓴이</th>
												<th width="25%">등록일</th>
												<th width="15%">조회수</th>
											</tr>
										
										<c:set var="cnt"  value="1"/>
											
										<c:forEach var = "result"  items="${resultList}">
											<tr align="center">
												<td><c:out value="${cnt}"/></td>
												<td align="left"><c:out value="${result.title}"/></td>
												<td><c:out value="${result.name}"/></td>
												<td><c:out value="${result.rdate}"/></td>
												<td><c:out value="${result.hits}"/></td>
											</tr>									
											<c:set var="cnt"  value="${cnt + 1}"/>
										</c:forEach>
										</table>
									</div>
								</section>
							</article>

						<!-- 글쓰기 -->
							<article id="contact" class="panel">
								<header>
									<h2>글쓰기</h2>
								</header>
								<form name="frm"  id="frm" >
									<div>
										<div class="row">
											<div class="col-6 col-12-medium">
												<input type="text" name="title"  id="title" placeholder="제목" />
											</div>
											<div class="col-6 col-12-medium">
												<input type="password" name="pass"  id="pass"  placeholder="암호" />
											</div>
											<div class="col-12">
												<input type="text" name="name"  id="name" placeholder="글쓴이" />
											</div>
											<div class="col-12">
												<textarea name="content"   id="content"  placeholder="내용" rows="6"></textarea>
											</div>
											<div class="col-12">
												<input type="submit"  onclick="fn_submit(); return false;" value="저장" />
												<input type="reset" value="취소" />
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