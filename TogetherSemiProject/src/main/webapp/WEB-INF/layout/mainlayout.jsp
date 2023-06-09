<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Gowun+Dodum&family=Single+Day&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
	body, body *{
		font-family: 'Gowun Dodum', sans-serif;
	}
	.main{
		height: 1200px;
	}
	.header{
		height: 120px;
	}
	
</style>
</head>
<body>
	
<div class="mainlayout">
	<header class="header">
		<tiles:insertAttribute name="header"/>
	</header>
	<section class="main">
		<tiles:insertAttribute name="main"/>
	</section>
	<section class="bot_btn">
		<tiles:insertAttribute name="bot_btn"/>
	</section>
	<footer class="footer">
		<tiles:insertAttribute name="footer"/>
	</footer>
	
</div>

</body>
</html>











