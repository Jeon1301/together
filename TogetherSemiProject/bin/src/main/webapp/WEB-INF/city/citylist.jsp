<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Single+Day&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
   body, body *{
      font-family: 'Jua'
   }
</style>
</head>
<body>
<div style="border: 1px solid black;width: 100%;height: 100px;font-size: 50px">header</div>
<br><br><br><br>
<label for="region-select">광역자치단체 선택:</label>
<select id="region-select">
    <option value="">선택하세요</option>
    <optgroup label="수도권">
        <option value="seoul">서울특별시</option>
        <option value="incheon">인천광역시</option>
        <option value="gyeonggi">경기도</option>
    </optgroup>
    <optgroup label="경상권">
        <option value="busan">부산광역시</option>
        <option value="daegu">대구광역시</option>
        <option value="ulsan">울산광역시</option>
        <option value="gyeongsang">경상도</option>
    </optgroup>
    <optgroup label="충청권">
        <option value="daejeon">대전광역시</option>
        <option value="gwangju">광주광역시</option>
        <option value="chungcheong">충청도</option>
    </optgroup>
    <optgroup label="전라권">
        <option value="jeonju">전주시</option>
        <option value="jeonnam">전라남도</option>
        <option value="jeonbuk">전라북도</option>
    </optgroup>
    <optgroup label="강원권">
        <option value="gangwon">강원도</option>
    </optgroup>
    <optgroup label="제주권">
        <option value="jeju">제주특별자치도</option>
    </optgroup>
</select>
<button style="float: right">글쓰기</button>
<table class="table table-bordered">
    <tr>
        <th style="width: 100px">번호</th>
        <th style="width: 400px">제목</th>
        <th style="width: 200px">작성자</th>
        <th style="width: 150px">작성일</th>
        <th style="width: 100px">조회수</th>
        <th style="width: 100px">추천수</th>
    </tr>
    <%--<c:forEach var="dto" items="${list}" varStatus="i">--%>
        <tr>
            <td align="center"><%--${i.count}--%>1</td>
            <td>
                <b><%--${dto.subject}--%>2</b>
            </td>
            <td>
                    <%--${dto.작성자}--%>3
            </td>
            <td align="right">
                <%--<fmt:formatDate value="${dto.cbwriteday}" type="yyyy-MM-dd hh:mm"/>--%>4
            </td>
            <td>
                <%--${dto.readcount}--%>5
            </td>
            <td>
               <%-- ${dto.cblike}--%>6
            </td>
        </tr>
    <%--</c:forEach>--%>
</table>

<!-- 페이징처리 -->
<div style="width:700px;text-align: center;font-size: 20px;">
    <!-- 이전 -->
    <c:if test="${startPage>1 }">
        <a style="color:green;text-decoration: none;cursor: pointer;"
           href="list?currentPage=${startPage-1 }">이전</a>
    </c:if>
    &nbsp;

    <!-- 페이지 번호 출력 -->
    <c:forEach var="pp" begin="${startPage }" end="${endPage }">
        <c:if test="${currentPage==pp }">
            <a style="color:green;text-decoration: none;cursor: pointer;"
               href="list?currentPage=${pp }">${pp }</a>
        </c:if>
        <c:if test="${currentPage!=pp }">
            <a style="color:black;text-decoration: none;cursor: pointer;"
               href="list?currentPage=${pp }">${pp }</a>
        </c:if>
        &nbsp;
    </c:forEach>

    <!-- 다음 -->
    <c:if test="${endPage<totalPage }">
        <a style="color:green;text-decoration: none;cursor: pointer;"
           href="list?currentPage=${endPage+1 }">다음</a>
    </c:if>

</div>
</body>
</html>










