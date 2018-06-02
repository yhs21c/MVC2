<%@page import="java.util.regex.Pattern"%>
 
<%@ page language="java" contentType="text/html; charset=utf-8"
 
    pageEncoding="utf-8"%>
 
<%@ page import="java.sql.*" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 
<title>본격! 게시판 - 게시글 조회</title>    
 
</head>
 
<body>                                           
 
    <h1>게시글 조회</h1>                    
 
    <table border="1">                            <!-- border은 테두리를 표시하는 속성입니다. -->
 		<c:forEach items="${articleList}" var="article">
        <tr>                                 
 
            <th>번호</th>                    
 
            <td>${article.idx}</td>
 
            <th>작성자</th>
 
            <td>${article.writer}</td>
            <th>ip</th>
 
            <td>${article.regip}</td>
 
            <th>날짜</th>
 
            <td>${article.regdate}</td>
 
            <th>조회수</th>
 
            <td>${article.count}</td>
 
        </tr>
 
        <tr>
 
            <th colspan="2">제목</th>                     <!-- colspan은 행병합 속성입니다. -->
 
            <td colspan="6">${article.title}</td>
 
        </tr>
 
        <tr>
 
            <th colspan="2">내용</th>                    
 
            <td colspan="6">${article.content}</td>
 
        </tr>
  </c:forEach>
    </table>

    <a href="delete.jsp?idx=${article.idx}">게시글삭제</a>
 
    <a href="list.do">목록으로</a>
</body>
 </html>