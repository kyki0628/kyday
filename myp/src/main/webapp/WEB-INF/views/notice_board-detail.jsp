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

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<!-- Vue -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<head>
<script type="text/javascript">
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

	//수정
	function edit() {
		$('.click2edit').summernote({
			focus : true
		});
		$("#editsave").css("display", "inline");
		$("#edit").css("display", "none");
	}

	//수정 취소
	function editcancel() {
		$("#hide").css("display", "");
		$('.click2edit').summernote('destroy');
		$("#editsave").css("display", "none");
		$("#edit").css("display", "");
	}

	//수정 저장
	function editsave() {
		$('.click2edit').summernote('destroy');
		$('#cs').val((document.getElementById('con').innerHTML));
		$('#contenteditform').submit();
	}

	//댓글 저장
	function replysave() {
		$("#replysave").submit();
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#bg {
	background-image: url('resources/images/cat2.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	width: 100%;
	height: 100%;
	resize: inherit;
	background-position: 20%;
}

#contact {
	background-color: #000000;
	position: relative;
	padding-top: 100px;
	padding-bottom: 100px;
}

.box {
	box-shadow: 5px 5px 5px 5px gray;
}

.container {
	padding: 0px;
}

.tables {
	background-color: #ffffff;
	opacity: 0.95;
	position: relative;
	top: -330px;
}

.click2edit {
	width: 300px;
}

@media ( max-width : 300px) {
	.tables {
		
	}
}

@media ( min-width : 100px) {
	.tables {
		top: -30px;
	}
}

@media ( min-width : 400px) {
	.tables {
		top: -30px;
	}
}

@media ( min-width : 600px) {
	.tables {
		top: -100px;
	}
}

@media ( min-width : 800px) {
	.tables {
		top: -250px;
	}
}

@media ( min-width : 1000px) {
	.tables {
		top: -400px;
	}
}

.myButton {
	box-shadow: inset 0px 1px 0px 0px #ffffff;
	background: linear-gradient(to bottom, #f9f9f9 5%, #e9e9e9 100%);
	background-color: #f9f9f9;
	border-radius: 6px;
	border: 1px solid #dcdcdc;
	display: inline-block;
	cursor: pointer;
	color: #666666;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffffff;
	text-decoration: none;
}

.myButton:hover {
	background: linear-gradient(to bottom, #e9e9e9 5%, #f9f9f9 100%);
	background-color: #e9e9e9;
}

.myButton:active {
	position: relative;
	top: 1px;
}
</style>
<title>comment</title>
</head>

<body>
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
	<!-- background-image -->
	<img alt="" src="./resources/images/cat2.jpg" style="background-size: cover; width: 100%; height: 100%;">

	<!-- table -->
	<div style="padding: 10px;">
		<div class="container tables ss">
			<table class="table box">
				<c:forEach begin="0" var="detail" items="${dtoi}">
					<tr>
						<td>No.</td>
						<td align="center">제목</td>
						<td align="center">작성자</td>
						<td align="center" class="content-date">작성 날자</td>
						<td>조회수</td>
					</tr>
					<tr class="line">
						<td>${rn}</td>
						<td align="center">${detail.title}</td>
						<td align="center">${detail.id}</td>
						<td align="center" class="content-date">${detail.wdate}</td>
						<td>${detail.hit}</td>
					</tr>
					<tr>
						<td colspan="5" align="center">${detail.cont_num }</td>
					</tr>
					<tr>
						<td colspan="5" style="padding-top: 50px; padding-bottom: 50px">
							<form id="contenteditform" action="editsave.do" method="get">
								<input type="hidden" name="title" value="${detail.title }"> <input type="hidden" name="cont_num" value="${detail.cont_num}">
								<div class="click2edit" id="con">${detail.content}</div>
								<input name="content" type="hidden" id="cs">
							</form>
						</td>
					</tr>
					<tr>
						<td colspan="5" align="right">
							<div id="editsave" style="display: none;">
								<button class="btn btn-success" onclick="editsave()">저장</button>
								<button class="btn btn-secondary" onclick="editcancel()">취소</button>
							</div>
							<button class="btn btn-secondary" onclick="edit()" id="edit">수정</button>
							<button class="btn btn-danger" onclick="location.href='delete.do?num=${detail.cont_num}'">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- 댓글 -->
		<div style="padding: 10px; padding-top: 70px;">
			<div class="container tables ss">
				<div style="padding: 10px;">
					<div class="container ss">
						<script>
							
						</script>
						<table class="table box">
							<tr>
								<td colspan="5">
									<button type="button" id="re_write" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"
										style="width: 100%;">댓글 작성</button>
								</td>
							</tr>
							<c:forEach begin="0" var="replydetail" items="${dtor}">
								<tr>
									<td style="width: 150px">${replydetail.r_rn}&emsp;&emsp;${replydetail.id}:</td>
									<td colspan="4">${replydetail.reply_content }<small class="text-muted" style="float: right">${replydetail.rdate}</small></td>
								</tr>
								<tr id="texta">
									<td align="center"><img alt="" src="./resources/icon/corner-down-right.svg" style="padding-top: 15px"></td>
									<td colspan="3">
									<form>
									<div class="in-block">
										<textarea class="form-control" cols="60px"></textarea>
										<button class="btn btn-primary">확인</button>
									</div>
									</form>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="5"><c:choose>
										<c:when test="${rn==1}">
											<button class="btn btn-danger" style="float: left;" onclick="location.href='previouscontent.do?rn='+${rn}" disabled>이전</button>
										</c:when>
										<c:otherwise>
											<button class="btn btn-danger" style="float: left;" onclick="location.href='previouscontent.do?rn='+${rn}">이전</button>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${rn==total}">
											<button class="btn btn-danger" style="float: right;" onclick="location.href='nextcontent.do?rn='+${rn}" disabled>다음</button>
										</c:when>
										<c:otherwise>
											<button class="btn btn-danger" style="float: right;" onclick="location.href='nextcontent.do?rn='+${rn}">다음</button>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- 댓글 입력 dialog -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">새 메시지</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="reply_save.do" method="get" id="replysave">
						<div class="form-group">
							<c:forEach begin="0" var="detail" items="${dtoi}">
								<label for="message-text" class="col-form-label">Message:</label>
								<input type="hidden" name="row" value="${detail.rn}">
								<input type="hidden" name="cont_num" value="${detail.cont_num}">
								<textarea id="ta" rows="4" name="reply_content" class="form-control"></textarea>
							</c:forEach>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" style="float: right;" type="submit" onclick="replysave()">입력</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
