<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<head>
<script>
	$(function() {
		$(window).scroll(
				function() {
					if ($(document).scrollTop() > 30) {
						$('#head1').addClass(
								'animate__animated animate__fadeOutUp');
					} else {
						$('#head1').removeClass(
								'animate__animated animate__fadeOutUp');
					}
				});
	});

	/* 로그아웃 */
	$(function() {
		$("#logoutbtn").on('click', function() {
			var result = confirm("로그아웃?");
			if (result) {
				location.href = "logout.do";
			} else {

			}
		})
	})
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.box {
	box-shadow: 5px 5px 5px 5px gray;
}

#contact {
	background-color: #000000;
	position: relative;
	padding-top: 100px;
	padding-bottom: 100px;
}

.table {
	background-color: #ffffff;
	opacity: 0.95;
	position: relative;
}

.tab {
	white-space: pre;
}

.line:hover {
	background: #dbdbdb;
}

#space {
	height: 1000px;
}

@media ( min-width : 400px) {
	.table {
		top: -30px;
	}
}

@media ( min-width : 1000px) {
	.table {
		top: -400px;
	}
}
</style>
<title>comment</title>
</head>

<body>
	<div id="bg">
		<!-- 1번 header-->
		<div id="head1" class="navbar navbar-expand-lg navbar-light bg-light" style="opacity: 0.7; font-weight: bold; position: fixed; width: 100%;">
			<a class="navbar-brand" href="index.do"><b>YK`s Day</b></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<span class="nav-item"><a class="nav-link" href="write.do" style="color: #2B2B2B; font-weight: bold;">글쓰기</a></span> <span class="nav-item"><a
						class="nav-link" href="comment.do" style="color: #565655; font-weight: bold;">게시판</a></span> <input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
				</form>
				<div>
					<img src="./resources/icon/user.svg" class="rounded-circle" style="padding: 5px; height: 40px;">
					<c:choose>
						<c:when test="${ ids != null }">
							<font>${ids}</font>
							<button class="btn btn-sm btn-secondary" id="logoutbtn">logout</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-sm btn-secondary" onclick="location.href='login.do'">login</button>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<img alt="" src="./resources/images/cat2.jpg" style="background-size: cover; width: 100%; height: 100%;">
	<div class="container tables">
		<table class="table box">
			<tr>
				<td>No.</td>
				<td align="center">제목</td>
				<td align="center">작성자</td>
				<td align="center" class="content-date">작성 날자</td>
				<td>조회수</td>
			</tr>
			<c:forEach begin="0" end="15" var="i" items="${list}">
				<tr class="line">
					<td>${i.rn}</td>
					<td align="center"><a href="notice_board-detail.do?title=${i.title}&&cont_num=${i.cont_num}&&row=${i.rn}">${i.title}</a></td>
					<td align="center">${i.id}</td>
					<td align="center" class="content-date">${i.wdate}</td>
					<td>${i.hit}</td>
				</tr>
			</c:forEach>
			<tr align="center">
				<td colspan="5"><c:if test="${startpage != 1}">
						<a href="comment.do?pageNum=${startpage-10 }"><img src="./resources/icon/chevrons-left.svg"><font color="#2B2B2B" size="2px">이전</font></a>
						&emsp;&emsp;
					</c:if> <c:forEach begin="${startpage}" end="${endpage}" var="i">
						<c:choose>
							<c:when test="${pageNum==i}">
								<font color="##2B2B2B">${i}&nbsp;</font>
							</c:when>
							<c:otherwise>
								<a href="comment.do?pageNum=${i}">${i}&nbsp;</a>
							</c:otherwise>
						</c:choose>
					</c:forEach> <c:if test="${endpage < pagecount}">
						&emsp;&emsp;
						<a href="comment.do?pageNum=${startpage+10}"><font color="#2B2B2B" size="2px">다음</font> <img src="./resources/icon/chevrons-right.svg"></a>
					</c:if></td>
			</tr>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
