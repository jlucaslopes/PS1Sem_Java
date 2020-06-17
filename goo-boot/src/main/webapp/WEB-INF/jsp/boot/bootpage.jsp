<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<title>GooBoot</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${contextPath}/css/font-awesome.css" rel="stylesheet">
<link href="${contextPath}/css/small-business.css" rel="stylesheet">

</head>
<header>

	<nav
		class="navbar navbar-expand-lg navbar-dark default-color fixed-top shadow-lg rounded">
		<a class="navbar-brand" href="#"><strong>GooBoot</strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Opinions</a>
				</li>
			</ul>
			<ul class="navbar-nav nav-flex-icons">
				<li class="nav-item"><a class="nav-link"><i
						class="fa fa-facebook-f"></i></a></li>
				<li class="nav-item"><a class="nav-link"><i
						class="fa fa-twitter"></i></a></li>
				<li class="nav-item"><a class="nav-link"><i
						class="fa fa-instagram"></i></a></li>
			</ul>
		</div>
	</nav>

</header>

<body class="bodyboot">

	<div class="container-boot ">
		<div class="cardboot" style="width: 23rem;">
			<img src="${contextPath}/assets/chatbot.png" class="card-img-top"
				alt="...">
			<div class="card-body">
				<h5 class="card-title titleboot text-center">GooBoot</h5>
				<p class="card-text cardtext-boot">
					O GooBot foi criado inicialmente como idéia para um projeto
					acadêmico da faculdade FIAP. <br> <br> A principal idéia
					do "BOT" é ser um companheiro para pessoas com complicações
					emocionais, contendo alguns outros assuntos básicos.
				</p>
			</div>
		</div>
	</div>

	<div class="containerlogo align-top py-5">

		<div class="row overflow-hidden shadow-lg rounded"
			style="height: 37rem; background-color: #2E466D">
			<!-- Users box-->
			<div class="col-5 px-1 pt-3">
				<div class="bg-white">
					<div class="bg-gray px-4 py-2 bg-light">
						<p class="h5 mb-0 py-1" style="text-align: center">
							<button type="button" style="float: left" class="close"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							Contacts
						</p>
					</div>

					<div class="messages-box bg-light">
						<div class="list-group rounded-0">
							<a
								class="list-group-item list-group-item-action active text-white rounded-0">
								<div class="media">
									<img src="${contextPath}/assets/chatbot.png" alt="user"
										width="50" class="rounded-circle">
									<div class="media-body ml-4">
										<div
											class="d-flex align-items-center justify-content-between mb-1">
											<h6 class="mb-0">GooBoot</h6>
											<small class="small font-weight-bold">Online</small>
										</div>
										<p class="font-italic mb-0 text-small">Hello!</p>
									</div>
								</div>
							</a> <a href="#"
								class="list-group-item list-group-item-action list-group-item-light rounded-0">
								<div class="media">
									<img src="${contextPath}/assets/chatbot.png" alt="user"
										width="50" class="rounded-circle">
									<div class="media-body ml-4">
										<div
											class="d-flex align-items-center justify-content-between mb-1">
											<h6 class="mb-0">Your Name</h6>
											<small class="small font-weight-bold">Online</small>
										</div>
										<p class="font-italic text-muted mb-0 text-small">Hi I'm
											(Name...).</p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Chat Box-->
			<div class="col-7 px-1 pt-3">
				<div class="px-4 py-5 chat-box bg-chatboot">
					<div class="media w-70 mb-3">
						<img src="${contextPath}/assets/chatbot.png" alt="user" width="50"
							class="rounded-circle">
						<div class="media-bodychat ml-3">
							<div class="bg-primary rounded py-2 px-3 mb-2">
								<p class="text-small mb-0 text-white">Hi my name is Goobot.

									I'm a bot to talk about many things with u like feelings,
									games, culinary, Sports and others. And u what's your name?</p>
							</div>
							<p class="small text-muted">12:00 PM | Aug 13</p>
						</div>
					</div>


					<div class="media w-50 ml-auto mb-3">
						<div class="media-body">
							<div class="bg-primary rounded py-2 px-3 mb-2">
								<p class="text-small mb-0 text-white">Test which is a new
									approach to have all solutions</p>
							</div>
							<p class="small text-muted">12:00 PM | Aug 13</p>
						</div>
					</div>
				</div>

				<form action="#" class="bg-light">
					<div class="input-group mb-3">
						<input type="text" placeholder="Digite sua mensagem..."
							aria-describedby="button-addon2"
							class="form-control rounded-15 border-0 py-4 bg-chat">
						<div class="input-group-append">
							<button id="button-addon2" type="submit"
								class="btn btn-outline-secondary">
								<i class=""><img src="${contextPath}/assets/send.png"
									alt="user" width="34" class="rounded-circle"></i>
							</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>

	<div class="container-boot ">
		<div class="cardboot" style="width: 17rem;">
			<img src="${contextPath}/assets/help.png" class="card-img-top"
				alt="...">
			<div class="card-body">
				<h5 class="card-title titleboot text-center">Dicas</h5>
				<p class="card-text cardtext-boot text-left">
					O GooBot foi criado inicialmente como idéia para um projeto
					acadêmico da faculdade FIAP. <br> <br> A principal idéia
					do "BOT" é ser um companheiro para pessoas com complicações
					emocionais, contendo alguns outros assuntos básicos.
				</p>
			</div>
		</div>
	</div>


	<footer class="blockquote-footerboot font-small shadow-lg p-3 rounded">
		<i class="fa fa-bullhorn d-inline-block float-right"></i>
		<div class="footer-copyright text-center">
			© 2020 Copyright to <a href="#">GooBoot.com</a>
		</div>
	</footer>

</body>
</html>