<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>regist</title>
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
	
	$(function(){
		$('#btnlogin').on('click', function(){
			$('#reigster').submit();
		});
	});
	
	$(function() {
		$(window).ready(function() {
			$('#ids').focus();
		})
	})
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
				<div class="card-header">Rregist</div>
				<div class="card-body">
					<h5 class="card-title"></h5>
					<form class="card-text" id="reigster" action="register.do" method="post">
						아이디:  <input class="form-control mr-sm-2" type="text" name="id" id="ids" placeholder="15글자 이내"><br>
						비밀번호: <input class="form-control mr-sm-2" type="password" name="password" id="password" placeholder="20자, 영문+숫자"><br>
						전화번호: <input class="form-control mr-sm-2" type="text" name="tel" id="tel" placeholder="010-0000-0000"><br>
						인증번호: <input class="form-control mr-sm-2" type="text" name="code" id="code" placeholder="0000"><br>
					</form>
					<div class="container">
						<button class="btn btn-secondary btnlogin" id="btnlogin" type="submit">confirm</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-danger btnlogin" onclick="location.href='login.do'">cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>