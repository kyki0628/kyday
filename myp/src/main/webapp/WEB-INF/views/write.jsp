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

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>write comment</title>
</head>
<style>
.editer {
	background-color: #ffffff;
	position: relative;
	top: -330px;
}

.writes {
	width: 100%;
}

#contact {
	background-color: #000000;
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

@media ( min-width : 400px) {
	.editer {
		top: -30px;
	}
}
@media ( min-width : 1000px) {
	.editer {
		top: -400px;
	}
}
</style>

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
	//써머노트 옵션
	$(document).ready(function() {
		$('#summernote').summernote({
			placeholder : '500자 이내로 작성해주시기 바랍니다.',
			focus : true,
			height : 400,
			callbacks : {
				onImageUpload : function(files) {
					uploadSummernoteImageFile(files[0], this);
				}
			}
		})
	})

	/* 로그아웃 */
	$(function() {
		$("#logoutbtn").on('click', function() {
			var result = confirm("로그아웃 하시겠습니까?");
			if (result) {
				location.href = "logout.do";
			} else {
			}
		})
	})

	//writesave-messages1
	function crayBtn1() {
		$('#writesave-message').dialog({
			modal : true,
			buttons : {
				"확인" : function() {
					$(this).dialog($('#saveform').submit());
				},
				"취소" : function() {
					$(this).dialog('close');
				}
			}
		})
	}
</script>
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
	<div>
	<img alt="" src="./resources/images/cat2.jpg" style="background-size: cover; width: 100%; height: 100%;">
	</div>
	<!-- 써머노트 -->
	<div class="container editer">
		<form method="post" id="saveform" action="write_save.do">
			<div class="form-inline" style="padding-bottom: 5px">
				제목 : <input type="text" class="form-control" name='title' style="width: 96%" placeholder="제목을 작성해주세요.">
			</div>
			<textarea id="summernote" name="content"></textarea>
		</form>
		<div class="container">
			<button class="btn btn-secondary writes" id="writeconfirm" onclick="crayBtn1()">입력완료</button>
			<button class="btn btn-danger writes" onclick="location.href='index.do'">입력취소</button>
		</div>
	</div>
	<!-- dialog-messages -->
	<div id="writesave-message" title="" style='display: none'>
		작성을 완료하시겠습니까?<br />
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>