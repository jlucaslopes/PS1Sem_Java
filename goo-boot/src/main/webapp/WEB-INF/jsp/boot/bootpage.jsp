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
				<h5 class="card-title titleboot text-center">GooBoot</h5>
				<p class="card-text cardtext-boot">
					O GooBot foi criado para gerenciar chat bots de acordo com a sua
					escolha. <br> <br> A principal idéia do bot manager é
					facilitar a maneira em que você consegue criar, deletar, alterar e
					excluir um chat bot de acordo com a sua vontade, deixando assim bem
					mais facil a sua experiência como usuario.
				</p>
			</div>
		</div>
	</div>

	<div class="containerlogo align-top py-5">

		<div class="row overflow-hidden shadow-lg rounded"
			style="width: 70rem; height: 37rem; background-color: #2E466D">
			<!-- Users box-->
			<div class="col-5 px-1 pt-3">
				<div class="bg-light rounded" style="width: 69.5rem">
					<div class="bg-gray px-4 py-2 bg-light rounded">
						<p class="h5 mb-0 py-1" style="text-align: center">
							<button type="button"
								style="float: left; background-color: transparent; border: 0px"
								class="create" value="create" aria-label="create">
								<a href="${contextPath}/boot/form?page=boot-novo"> <i
									class="fa fa-plus"></i>
								</a>
							</button>
							Bots
						</p>
					</div>

					<div class="table-wrapper-scroll-y my-custom-scrollbar">
						<table class="table table-striped">
							<thead>
								<tr>
									<th data-field="image"></th>
									<th data-field="name">Nome</th>
									<th data-field="segments" width="400">Categoria</th>
									<th class="actions" width="300">Ações</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${boot}" var="boot">
									<tr>
										<td><img style="width: 40px; height: 40px"
											src="${contextPath}/assets/chatbot.png"></img></td>
										<td>${boot.name}</td>
										<td>${boot.segments}</td>

										<td class="actions"><form:form
												action="${contextPath}/boot/${boot.id_bot}" method="delete">

												<a class="btn btn-success btn-sm"
													href="${contextPath}/boot/${boot.id_bot}"><i
													class="fa fa-search"></i></a>
												<a class="btn btn-warning btn-sm"
													href="${contextPath}/boot/form?page=boot-editar&id=${boot.id_bot}"><i
													class="fa fa-edit"></i></a>
												<button type="submit" class="btn btn-danger btn-sm">
													<i class="fa fa-trash"></i>
												</button>
											</form:form></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
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