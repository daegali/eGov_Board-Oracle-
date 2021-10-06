<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="card">
                            <div class="card-body">
                                <h4 class="card-title">글목록</h4>
                                <h6 class="card-subtitle">Add class <code>.color-table .info-table</code></h6>
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
                                <div class="table-responsive">
                                    <table class="table color-table info-table">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>글쓴이</th>
                                                <th>등록일</th>
                                                <th>조회수</th>
                                            </tr>
                                        </thead>
                                        <tbody>
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
                                        </tbody>
                                    </table>
                                    <!-- 페이지 처리 -->
										<div style=" padding-left: 50%;">
												<c:forEach var="i"  begin="1"  end="${totalPage}">
														<a href="boardList.do?viewPage=${i}">${i}</a>
												</c:forEach>
										</div>
										
                                </div>
                            </div>
                        </div>
</body>
</html>