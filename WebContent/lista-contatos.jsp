<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Lista de Contatos</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%@ include file="cabecalho.jsp"%>
	
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

	<table id="tabContatos">
		<tr>
			<th>Nome:</th>
			<th>E-mail:</th>
			<th>Endereço:</th>
			<th>Data de Nascimento:</th>
		</tr>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista }">
			<tr>
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
						E-mail não informado
					</c:if></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
			</tr>
		</c:forEach>
	</table>

	<%@ include file="rodape.jsp"%>
</body>
</html>