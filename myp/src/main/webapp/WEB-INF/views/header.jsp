<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

<script type="text/javascript">
	$(function() {
		$(window).scroll(
				function() {
					if ($(document).scrollTop() > 100) {
						$('#head1').addClass(
								'animate__animated animate__fadeOutUp');
					} else {
						$('#head1').removeClass(
								'animate__animated animate__fadeOutUp');
					}
				});
	});

	$(function() {
		$("#pop").popover({
			content: "<h3>환영합니다</h3> <div class='container'><a href='login.do'>login</a> /<a href='regist.do'>regist</a></div>",
			html: true
		})
	})

	function reginst() {
		var url = "regist.jsp";
		window.open(url, "", "width=500, height=600, left=600 ");
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
	font-wight: bold;
	resize: inherit;
	background-position: 20%;
}

#mainfont {
	font-size: 40px;
	font-family: swagger;
	width: 500px;
	position: relative;
	margin-top: 600px;
	float: right;
	margin-top: 600px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="bg">
		<!-- 1번 header-->
		<header id="head1" class="navbar navbar-expand-lg navbar-light bg-light" style="opacity: 0.7; font-weight: bold; position: fixed; width: 100%;">
			<a class="navbar-brand" href="index.do"><b>YK`s Day</b></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#profile">Profile<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#skills">Skills<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#portfolio">Portfolio<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#hobbies">Hobbies<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#stories">Stories<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="write.do">글쓰기<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="comment.do" tabindex="-1" aria-disabled="true">게시판</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
				</form>
				<div class="form-inline my-2 my-lg-0">
					<img alt="..." src="./resources/icon/user.svg" class="rounded-circle" style="padding: 5px">
					<button class="btn btn-sm btn-secondary" onclick="location.href='regist.do'">login</button>
					<button id="pop" type="button" class="btn btn-sm" data-container="body" data-toggle="popover" data-placement="bottom"></button>
				</div>
			</div>
		</header>
</body>
</html>