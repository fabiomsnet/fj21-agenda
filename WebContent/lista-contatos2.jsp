<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="br.com.caelum.agenda.dao.*,br.com.caelum.agenda.modelo.*,java.util.List,java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Lista de contatos</title>
</head>
<body>
	<table id="tabContatos">
		<tr>
			<th>Nome:</th>
			<th>E-mail:</th>
			<th>Endereço:</th>
			<th>Data de Nascimento:</th>
		</tr>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> lista = dao.getLista();
			SimpleDateFormat dataFormat = new SimpleDateFormat("dd/MM/yyyy");
			for (Contato contato : lista) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=dataFormat.format(contato.getDataNascimento().getTime())%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>