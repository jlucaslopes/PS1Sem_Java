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
		<a class="navbar-brand" href="${contextPath}/boot"><strong>GooBoot</strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${contextPath}/boot">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${contextPath}/segments">Segmentos</a></li>
			</ul>
			<ul class="navbar-nav nav-flex-icons">
				<li class="nav-item"><a class="nav-link"
					href="https://www.facebook.com/vine.santos.752"><i
						class="fa fa-facebook-f"></i></a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://www.linkedin.com/in/vinicius-santos-024774184/"><i
						class="fa fa-linkedin"></i></a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://github.com/vinebks"><i class="fa fa-github"></i></a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://www.instagram.com/vinne.santos/"><i
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
				<h5 class="card-title titleboot text-center">Detalhes</h5>
				<p class="card-text cardtext-boot">A pagina de detalhes mostra
					mais especificações e detalhes de cada bot de acordo com a criação
					dele.</p>
			</div>
		</div>
	</div>

	<div class="container-boot align-top justify-content-center text-left">
		<div class="row shadow-lg rounded justify-content-center text-left"
			style="width: 50rem; height: 35rem; background-color: #2E466D; color: #fff">
			<div class="container text-left">
				<div class="col-lg-12">
					<div class="well mt-1">

						<h2>${boot.name}</h2>

						<div class="form-group">
							<label class="control-label" for="name">Nome:</label> <b>${boot.name}</b>
						</div>

						<div class="form-group">
							<label class="control-label" for="nome">Segments:</label> <label
								class="label label-default">${boot.segments}</label>
						</div>

						<div class="form-group">
							<label class="control-label" for="welcome_msg">Mensagem
								de Boas-vindas:</label> <label class="label label-default">${boot.welcome_msg}</label>
						</div>

						<div class="form-group">
							<label class="control-label" for="farewell_msg">Mensagem
								de despedida:</label> <label class="label label-default">${boot.farewell_msg}</label>
						</div>

						<div class="form-group">
							<label class="control-label" for="downtime">Tempo para
								desconectar:</label> <label class="label label-default">${boot.downtime}</label>
						</div>

						<div class="form-group">
							<label class="control-label" for="default_answer">Mensagem
								padrao:</label> <label class="label label-default">${boot.default_answer}</label>
						</div>

						<hr>

						<a class="btn btn-back btn-lg" href="${contextPath}/boot">Voltar</a>

						<br> <br>

					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="container-boot float-right ml-30px">
		<div class="cardboot float-left" style="width: 17rem;">
			<img src="${contextPath}/assets/help.png" class="card-img-top"
				alt="...">
		</div>
	</div>


	<footer class="blockquote-footerboot font-small shadow-lg p-3 rounded">
		<i class="fa fa-bullhorn d-inline-block float-right"></i>
		<div class="footer-copyright text-center">
			© 2020 Copyright to <a href="#">GooBoot.com</a>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="${contextPath}/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${contextPath}/js/bootstrap.min.js"></script>

</body>
</html>