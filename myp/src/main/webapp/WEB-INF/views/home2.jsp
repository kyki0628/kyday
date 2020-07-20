<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- Vue -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>youngki's portfolio</title>
</head>

<script type="text/javascript">
	$(function() {
		$(window).scroll(
				function() {
					if ($(document).scrollTop() > 500) {
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
<style>
#bg {
	background-image: url('./resources/images/cat2.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	width: 100%;
	height: 100%;
	resize: inherit;
	background-position: 20%;
}

#profile {
	display: flex;
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

#skills {
	background-color: #333;
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

#contact {
	background-color: #000000;
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

.contect {
	color: white;
}

#portfolio {
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

#hobbies {
	background-color: #dcdcdc;
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

#stories {
	position: inherit;
	padding-top: 100px;
	padding-bottom: 100px;
}

.profile {
	width: auto;
	padding: 40px;
	margin-bottom: 20px;
}

#scrollmenu {
	height: 400px;
	overflow-x: auto;
	white-space: nowrap;
}

.card {
	height: auto;
}

.lg {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 20px;
	width: 210px;
}

.pg {
	display: inline-block;
	color: white;
	text-align: center;
	width: 100%;
}

.pi {
	display: block;
	width: 100%;
	height: 200px;
}

.lg:hover {
	background-color: #777;
}

.progress {
	height: 10px;
}

.imgs {
	display: block;
	width: 100%;
	height: auto;
	padding-top: 10px;
}

.hobs {
	width: 200px;
	height: auto;
	padding: 30px;
	float: inherit;
}

.logout-message {
	width: 350px;
	margin: 20px 0;
}

@font-face {
	font-family: swagger;
	src: url('./resources/font/SDSwagger.otf') format('opentype');
	font-style: normal;
	font-weight: normal;
}

@media ( max-width : 580px ) {
	#profile {
		float: none;
		width: auto;
	}
	.profile {
		float: none;
		width: auto;
		padding: 15px;
	}
	#profileimg {
		padding-left: 40px;
	}
	.hobs {
		width: 300px;
		height: auto;
		padding: 30px;
		float: inherit;
	}
}
</style>
<body>
	<script>
		AOS.init();

		$('.carousel').carousel({
			interval : false
		})
	</script>
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
					<li class="nav-item active"><a class="nav-link" href="#profile">Profile<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#skills">Skills<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#portfolio">Portfolio<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#hobbies">Hobbies<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#stories">Stories<span class="sr-only">(current)</span></a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<span class="nav-item"><a class="nav-link" href="write.do" id="" style="color: #2b2b2b">글쓰기</a></span> <span class="nav-item"><a
						class="nav-link" href="comment.do" style="color: #2b2b2b">게시판</a></span> <input class="form-control mr-sm-2" type="search" placeholder="Search"
						aria-label="Search">
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
	<!-- <img alt="" src="./resources/images/cat2.jpg" style="background-size: cover; background-repeat: no-repeat; width: 100%; height:70%; resize: inherit; background-position: 20%;"> -->
	<!-- 2번 -->
	<div id="profile">
		<div class="container" style="width: 1000px;">
			<div class="row">
				<div id="profileimg">
					<img src="./resources/images/my.JPG" height="150px" class="rounded-circle">
				</div>
				<div class="col">
					<h5 style="padding-left: 40px; padding-bottom: 20px;">
						<img alt="" src="./resources/icon/home.svg"> profile :)
					</h5>
				</div>
			</div>
			<div data-aos="fade-up" data-aos-duration="2000">
				<div class="container profile">
					<font style="font-family: swagger; font-size: 35px;"> 웹개발을 시작한지 얼마되지 않은 싱싱한 개발자 입니다!<br> 앞으로 가야할 길이 멀지만 꾸준히 노력고자 이 페이지를 만들었습니다!<br>
						저의 능력을 공개 하고 다른 사람들의 피드백을 받을 수 있도록 만들었습니다!<br> <br>생 일 : 1994년 06월 28일 <br>
					</font>
				</div>
			</div>
		</div>
	</div>

	<!-- 3번 -->
	<div id="skills">
		<div class="container">
			<h5 style="padding-left: 40px; padding-bottom: 20px; color: white;">
				<img alt="" src="./resources/icon/book-open.svg"> My Skills :()
			</h5>
			<div id="scrollmenu">
				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="200" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/java.png">
					</div>
				</div>
				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="300" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/html.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="400" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/css1.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="500" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/js.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="600" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/spring.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="700" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/jquerry.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="800" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/oracle.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="900" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/php.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="1000" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/python.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="1100" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/bootstrap.png">
					</div>
				</div>

				<div class="lg">
					<div data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="1200" data-aos-offset="0">
						<img class="imgs" alt="" src="./resources/images/tomcat.png">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 4번 -->
	<div id="portfolio">
		<div class="container">
			<h5 style="padding-left: 40px; padding-bottom: 20px;">
				<img alt="" src="./resources/icon/battery-charging.svg"> Portfolio
			</h5>
			<div>
				<div class="card-deck">
					<div class="card">
						<div data-aos="fade-up" data-aos-duration="1500">
							<div class="pg">
								<img src="./resources/images/p0-0.png" class="card-img-top pi" alt="...">
							</div>
							<div class="card-body">
								<h5 class="card-title">Sports Center</h5>
								<p class="card-text">체육관 대여 사이트 입니다. 축구장, 농구장, 야구장, 수영장등 체육관 시설을 선택하고 원하는 시간을 선택하면 기록되고 달력에 표시됩니다.</p>
								<small class="text-muted">제작 기간: 약 7일</small><br> <small class="text-muted">제작 인원: 2명</small>
							</div>
							<div class="card-footer">
								<small class="text-muted">로그인/ui부분 수정 필요</small>
							</div>
						</div>
					</div>
					<div class="card">
						<div data-aos="fade-up" data-aos-duration="1500">
							<div class="pg">
								<img src="./resources/images/p1-0.PNG" class="card-img-top pi" alt="...">
							</div>
							<div class="card-body">
								<h5 class="card-title">Developer's Bookstore</h5>
								<p class="card-text">책방사이트 입니다. 책을 검색하고 구매하고, 책에 관한 별점을 작성할수 있습니다. 관리자는 네이버에서 제공하는 API를 통해 손쉽게 책에 관한 내용을 가져올수 있습니다.</p>
								<small class="text-muted">제작 기간: 약 12일 </small><br> <small class="text-muted">제작 인원: 5명</small>
							</div>
							<div class="card-footer">
								<small class="text-muted">마이페이지 수정 필요</small>
							</div>
						</div>
					</div>
					<div class="card">
						<div data-aos="fade-up" data-aos-duration="1500">
							<div class="pg">
								<img src="./resources/images/cat3.jpg" class="card-img-top pi" alt="...">
							</div>
							<div class="card-body">
								<h5 class="card-title">새로운 프로젝트 제작중</h5>
								<p class="card-text">...</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">Last updated 3 mins ago</small>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- plus button here -->
	</div>

	<!-- 5번 -->
	<div id="hobbies">
		<div class="container">
			<h5 style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px;">
				<img alt="" src="./resources/icon/award.svg"> Hobbies
			</h5>
		</div>
		<div class="container" id="hobbie">
			<div class="row">
				<div data-aos="fade-up" data-aos-easing="ease-in-back" data-aos-delay="200" data-aos-offset="0">
					<img src="./resources/images/cat4.jpg" class="rounded-circle hobs">
				</div>
				<div data-aos="fade-up" data-aos-easing="ease-in-back" data-aos-delay="400" data-aos-offset="0">
					<img src="./resources/images/riding.jpg" class="rounded-circle hobs">
				</div>
				<div data-aos="fade-up" data-aos-easing="ease-in-back" data-aos-delay="300" data-aos-offset="0">
					<img src="./resources/images/coding.jpg" class="rounded-circle hobs">
				</div>
				<div data-aos="fade-up" data-aos-easing="ease-in-back" data-aos-delay="420" data-aos-offset="0">
					<img src="./resources/images/game3.jpg" class="rounded-circle hobs">
				</div>
				<div data-aos="fade-up" data-aos-easing="ease-in-back" data-aos-delay="250" data-aos-offset="0">
					<img src="./resources/images/fitness.jpg" class="rounded-circle hobs">
				</div>
			</div>
		</div>
	</div>

	<!-- 6번 -->
	<div id="stories">
		<div class="container">
			<h5 style="padding-left: 40px; padding-bottom: 20px;">
				<img alt="" src="./resources/icon/award.svg"> Stories
			</h5>
		</div>
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="false">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div data-aos="fade-right">
						<div class="row justify-content-around">
							<div class="col-3-sm">
								<div data-aos="fade-right">
									<c:forEach var="j" items="${dto1}">
										<a href="notice_board-detail.do?title=${i.title}?wdate=${i.wdate}">${j.title}</a>
										<br>
									</c:forEach>
								</div>
							</div>
							<div class="col-3-sm">
								<c:forEach var="e" items="${dto2}">
									<a href="notice_board-detail.do?title=${i.title}?wdate=${i.wdate}">${j.title}</a>
									<br>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row justify-content-around">
						<div class="col-3-sm">
							<c:forEach var="f" items="${dto3}">
								<a href="notice_board-detail.do?title=${i.title}?wdate=${i.wdate}">${j.title}</a>
								<br>
							</c:forEach>
						</div>
						<div class="col-3-sm">
							<c:forEach var="g" items="${dto4}">
								<a href="notice_board-detail.do?title=${i.title}?wdate=${i.wdate}">${j.title}</a>
								<br>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"><img alt="" src="./resources/icon/chevrons-left.svg"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"><img alt="" src="./resources/icon/chevrons-right.svg"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!-- 7번 footer -->
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
