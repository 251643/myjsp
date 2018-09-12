<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String[] movies = {"타이타닉", "시네마천국", "혹성탈출", "킹콩"};
	pageContext.setAttribute("movies", movies);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:set var="num1" value="7"/>
<c:set var="num2" value="10"/>
<c:set var="result" value="${num1*num2}"/>

<fmt:parseNumber var="num_1">${num1 }</fmt:parseNumber>
<fmt:parseNumber var="num_2" value="${num2 }"/>

<c:if test="${num_1>num_2 }">
num1이 더 커용
</c:if>

<c:forEach var="movies" items="${movies }" >${movies }</c:forEach>

<c:if test="${param.color ==1 }">
<span style="color : pink">핑크</span>
</c:if>
<c:if test="${param.color ==2 }">
<span style="color : skyblue">스카이블루</span>
</c:if>
<c:if test="${param.color ==3 }">
<span style="color : hotpink">핫!핑크</span>
</c:if>
</body>
</html>