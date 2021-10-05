<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/main.css'/>"/>
	     <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/noscript.css'/>"/>
	     <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/fontawesome-all.min.css'/>"/>
		<style>
			th {
				font-weight: bold ;
			}
			.div2 {
				text-align:right;
				padding-bottom:30px;
			}
			.div1{
				font-size:20px;
			}
			#searchText{				
    		width: 200px;
    		 padding-top: 5px;
    		padding-bottom: 6px
			}
			#search {
				width:100px;
				 padding-top: 5px;
    			padding-bottom: 6px;
			}
			
		</style>
</head>
<body>
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
						<!-- Work -->
							<article id="list" class="panel">
								<header>
									<h4 align="center">글목록</h4>
								</header>
									<div class="div1">Total : ${total }</div>	
									<div class="div2">
									<form id="searchFrm" method="post" action="boardList.do">	
										<select name="search" id="search" >
												<option value="title"  >제목</option>
												<option value="name">글쓴이</option>
												<option value="content">내용</option>										
										</select>
										<input type="text" name="searchText" id="searchText">
										<button type="submit" >검색</button>
										</form>
									</div>							
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
										
										<c:set var="cnt"  value="${rowNum }"/>
											
										<c:forEach var = "result"  items="${resultList}">
											<tr align="center">
												<td><c:out value="${cnt}"/></td>
												<td align="left"><a href="boardDetail.do?unq=${result.unq}"><c:out value="${result.title}"/></a></td>
												<td><c:out value="${result.name}"/></td>
												<td><c:out value="${result.rdate}"/></td>
												<td><c:out value="${result.hits}"/></td>
											</tr>									
											<%-- <c:set var="cnt"  value="${cnt + 1}"/> --%>
											<c:set var="cnt"  value="${cnt - 1}"/>
										</c:forEach>
										</table>
										<!-- 페이지 처리 -->
										<div style=" padding-left: 50%;">
												<c:forEach var="i"  begin="1"  end="${totalPage}">
														<a href="boardList.do?viewPage=${i}">${i}</a>
												</c:forEach>
										</div>
									</div>
								</section>
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