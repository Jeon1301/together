<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../commonvar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Single+Day&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
body, body * {
	font-family: 'Jua'
}
.cbcontent_img{
	width:400px;
	height:420px;
	margin:20px;
}
</style>
</head>
<body>
	<h1>지역 게시판</h1>
	<div
		style="width: 500px; background-color: #ddd; margin: 0 auto; margin-top: 40px;">
		<h3>제목${dto.subject}</h3>
		<h6 style="float: right;">추천수${dto.cblike}</h6>
		<h6 style="float: right;">조회수${dto.readcount}&nbsp;</h6>

		<h6 style="float: left">작성자${dto.uname}</h6>
		<h6>작성일${dto.cbwriteday }</h6>

		<hr>
		<div class="cbcontent" align="center">
		 <c:choose>
   		 <c:when test="${dto.cbphoto==null}">
   		<!-- Result값이 있다면 실행할 로직 -->
   		<img class="cbcontent_img" src="https://kr.object.ncloudstorage.com/together-bucket-104/moim/595a63db-47b3-4d25-b7a5-05451064b243">
   		 </c:when>
   		 <c:otherwise>
		 <!-- 그렇지 않다면 실행할 로직 -->
		 <img class="cbcontent_img" src="https://${imageUrl}/city/${dto.cbphoto}">	 
   		 </c:otherwise>
		</c:choose>		
		</div>
		<br>	
		<pre>
        게시글 영역${dto.cbcontent}
    	</pre>
		<br> <br> <br> <i class="bi bi-hand-thumbs-up"
			style="font-size: 40px; margin-left: 200px"></i> <i
			class="bi bi-hand-thumbs-down"
			style="font-size: 40px; margin-left: 30px"></i>

		<hr>
		<div style="margin: auto">
			<!-- <button type="submit" class="btn btn-sm btn-success updatebtn"
				style="margin-left: 180px" onclick="location.href='';">수정</button> -->
			<button type="button" class="btn btn-sm btn-success"
				onclick="history.back()">목록으로</button>
			<!-- <button type="button" class="btn btn-sm btn-success" id="delbtn">삭제</button> -->
			<c:choose>
			 <c:when test="${sessionunum eq dto.unum}">
			  <button type="button" class="btn btn-sm btn-outline-danger" style="width:100px" onclick="location.href='updateboardform.jsp?num=${dto.cbnum}'">
			    <i class="bi bi-pencil-square"></i>&nbsp;수정
			  </button>
			  
			  <button type="button" id="delbtn" class="btn btn-sm btn-outline-danger" style="width:100px" onclick="del(${dto.cbnum})">
			    <i class="bi bi-trash"></i>&nbsp;삭제
			  </button>
				</c:when>
				<c:otherwise>
				  <button type="button" class="btn btn-sm btn-outline-danger" style="width:100px" onclick="alert('작성자가 아닙니다')">
				    <i class="bi bi-pencil-square"></i>&nbsp;수정
				  </button>
				  
				  <button type="button" class="btn btn-sm btn-outline-danger" style="width:100px" onclick="alert('작성자가 아닙니다')">
				    <i class="bi bi-trash"></i>&nbsp;삭제
				  </button>
				</c:otherwise>
				</c:choose>
		</div>
		<hr>
		<form action="newcomment" method="post" id="newcomment">
			<input type="hidden" name="unum">
			<input type="hidden" name="uname">
			<input type="hidden" name="cbnum">
			<div class="mb-3 mt-3">
				<textarea class="form-control" rows="5" id="content" name="recontent"
					style="height: 200px; resize: none; width: 500px;"
					placeholder="내용을 입력해주세요"></textarea>
			</div>
			<button type="submit" class="btn btn-primary btn-sm"
				style="float: right; margin-right: 30px;">입력</button>
		</form>
		<br>
		<div>
			
			<table>
			<caption align="top" style="width: 500px">총 ${totalComment}개의 댓글</caption>
			<hr>
			<c:if test="${totalComment=='0'}">
				<tr>
					<td>댓글이 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${totalComment!='0' }">
			<c:forEach var="listcomment" items="${listcomment}">
				<tr>
				<c:forEach begin="1" end="${listcomment.depth}">
					&nbsp;&nbsp;
				</c:forEach>
					<td>${listcomment.uname}</td>
				</tr>
				<tr>
					<td>${listcomment.recontent}</td>
					<td style="float:right">${listcomment.rewriteday}</td>
				</tr>
				<tr>
					<td colspan="2"><button id="addComment" style="float:right">답글</button></td>
				</tr>
				<td class="addComment" colspan="2">
					<form action="newcomment" method="post">
						<div id="recontent" style="display: none;" >
							<textarea class="form-control" rows="5" name="recontent"
							style="height: 100px; resize: none; width: 498px;"
							placeholder="내용을 입력해주세요"></textarea>
							<button type="submit" class="btn btn-primary btn-sm"
							style="float: right; margin-right: 30px;">입력</button>
						</div>
					</form>
					</td>
				</c:forEach>
			</c:if>
			</table>
			
		</div>
		<br>
		<hr>
		<div>
			<br><br>
			<div><h4>이전 글</h4>
				<c:if test="${not empty precontent}">
					<a href="<c:url value='/city/detail?cbnum=${prenum}'/>"><h4>${precontent}</h4></a>
				</c:if>
				<c:if test="${empty precontent}">
					<h4>이전 게시글이 없습니다</h4>
				</c:if>
			</div>
			<br>
			<div><h4>다음 글</h4>
				<c:if test="${not empty nxtcontent}">
					<a href="<c:url value='/city/detail?cbnum=${nxtnum}'/>"><h4>${nxtcontent}</h4></a>
				</c:if>
				<c:if test="${empty nxtcontent}">
					<h4>다음 게시글이 없습니다 ${rdto.uname}</h4>
				</c:if>
			</div>
		</div>
	</div>

	</div>
</body>
<script type="text/javascript">
	$(document).on("click", "#delbtn", function() {
		let b=confirm("삭제를 하려면 [확인]을 눌러주세요");
		if(b){
			location.href="delete?cbnum="+${dto.cbnum};
		}
	});
	
	$(document).on("click", "#addComment", function() {
    	let s=$("#recontent").css("display");
    	if(s=="none"){
			$("#recontent").css("display", "block");
    	} else {
    		$("#recontent").css("display", "none");
    	}
	});
	
</script>
</html>