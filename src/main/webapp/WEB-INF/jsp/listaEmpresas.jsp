
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"/>
	
	Usuário Logado: ${usuarioLogado.login}
	
	<br>
	<br>
	<br>
	
	<%
	//scriptlet
	String nomeEmpresa = (String)request.getAttribute("empresa");
	System.out.println(nomeEmpresa);
	%>
	<c:if test="${not empty empresa }">
	Empresa <% out.println(nomeEmpresa); %> cadastrada com sucesso!
	<br>
	Empresa <%=nomeEmpresa%> cadastrada com sucesso!
	<br>
	Empresa ${empresa} cadastrada com sucesso!
	</c:if>

	<br>

	Lista de empresas: <br>
	<ul>
		<%
		List<Empresa> lista = (List<Empresa>) request.getAttribute("empresas");
		for (Empresa empresa : lista) {
		%>
		<li><%=empresa.getNome()%></li>
		<%
		}
		%>
	</ul>
	Lista de empresas: <br>
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/> 
				<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">edita</a>
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
			</li>
		</c:forEach>
	</ul>	
</body>
</html>