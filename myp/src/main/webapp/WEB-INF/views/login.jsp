<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
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

<title>login</title>
</head>
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
		$("#btnlogin").on("click", function() {
			$("#loginform").submit();
		})
	})

	$(function() {
		$(window).ready(function() {
			$('#id').focus();
		})
	})

	function move() {
		if (event.KeyCode == 13) {
			$("#loginform").submit();
		}
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

.box {
	box-shadow: 5px 5px 5px 5px gray;
}

#regist {
	padding-top: 280px;
	padding-bottom: 300px;
	width: 375px;
	position: relative;
}

#contact {
	background-color: #000000;
	position: relative;
	padding-top: 100px;
	padding-bottom: 100px;
}

.btnlogin {
	width: 100px;
}

@media ( max-width : 400px ) {
	#regist {
		padding-top: 150px;
		padding-bottom: 150px;
	}
}
</style>

<body>
	<div id="bg">
		<!-- 1번 header-->
		<div id="head1" class="navbar navbar-expand-lg navbar-light bg-light" style="opacity: 0.7; font-weight: bold; position: fixed; width: 100%;">
			<a class="navbar-brand" href="index.do"><b>YK`s Day</b></a>
		</div>
		<div class="container" id="regist">
			<div class="card text-center box">
				<div class="card-header">Login</div>
				<div class="card-body">
					<form class="card-text" action="loginto.do" method="post" id="loginform">
						<h5 class="card-title">환영합니다 !!</h5>
						<div class="col">
							<label for="id">아이디:</label> <input class="form-control" type="text" name="id" id="id" required> <br>
						</div>
						<div class="col">
							<label for="password">비밀번호:</label> <input class="form-control mr-sm-2" type="password" name="password" id="password" required><br>
						</div>
						<div class="container">
							<button class="btn btn-secondary btnlogin" id="btnlogin" onclick="move()">login</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-danger btnlogin" onclick="location.href='index.do'">cancel</button>
						</div>
					</form>
				</div>
				<div class="card-footer text-muted">
					<a href="regist.do">회원이 아니세요?</a> 전화번호로 간단하게 가입하고 피드백을 남겨주세요! <br> <a href="#">아이디/비밀번호를 잊어버리셨니요?</a>
				</div>
			</div>
		</div>
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>