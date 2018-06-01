
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>본격! 게시판 - 게시글 리스트</title>
<!-- 윈도우 상단에 뜨는 내용입니다. -->
<style type="text/css">
table,td,th {
	border: 1px solid green;
}
th {
	background-color: green;
	color: white;
}
</style>
</head>

<body><!-- HTML문서의 주 내용이 들어가는 부분입니다. -->

	<h1>게시글 리스트</h1><!-- 헤드라인 글씨를 표현하는 태그입니다. -->

	<table>	<!-- 표 형식의 데이터를 표현하는 태그입니다. -->

		<tr>	<!-- table태그 내에서 행을 정의할때 쓰는 태그입니다. -->
			<th>번호</th>	<!-- Table Header의 약자로 table태그 내에서 -->
			<th>제목</th>	<!-- 강조하고싶은 컬럼을 나타낼때 쓰는 태그입니다. -->
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${articleList}" var="article">
			<tr>
				<td>${article.idx}</td><!-- jstl의 표현식은 스크립트릿과 속성이 같아서 어디에쓰나 우선됨 -->
				<td><a href='content.do?idx=${article.idx}'>${article.title}</a></td>
				<td>${article.writer}</td>
				<td>${article.regdate}</td>
				<td>${article.count}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="write.jsp">글쓰기</a>
</body>
</html>   	