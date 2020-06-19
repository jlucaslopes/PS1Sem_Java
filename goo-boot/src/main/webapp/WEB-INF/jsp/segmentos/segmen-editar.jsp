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
			<img src="${contextPath}/assets/segments.png" class="card-img-top"
				alt="...">
			<div class="card-body">
				<h5 class="card-title titleboot text-center">Edição</h5>
				<p class="card-text cardtext-boot">É possivel editar o nome do
					segmento caso você tenha errado ou queira trocar.
			</div>
		</div>
	</div>

	<div class="container-boot align-top justify-content-top">
		<div class="row shadow-lg rounded justify-content-center"
			style="width: 50rem; height: 49rem; background-color: #2E466D; color: #fff">
			<div class="row">
				<div class="col-lg-12">
					<div class="well mt-2">

						<h2 style="text-align: center">Editar Segmento</h2>

						<form:form modelAttribute="segmentsModel"
							action="${contextPath}/segments/${segmentsModel.id_segments}"
							method="put">

							<spring:hasBindErrors name="segmentsModel">
								<div class="alert alert-danger" role="alert">
									<form:errors path="*" class="has-error" />
								</div>
							</spring:hasBindErrors>

							<div class="form-group">
								<label class="control-label" for="name">Nome:</label>
								<form:input type="text" path="name" id="name"
									class="form-control" maxlength="50" size="50" />
								<font color="red"><form:errors path="name" /></font><br />
							</div>

							<hr>

							<a class="btn btn-back btn-lg" href="${contextPath}/segments">Cancelar</a>
							<button type="submit" class="btn btn-primary btn-lg">Alterar</button>

							<br>
							<br>
						</form:form>

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