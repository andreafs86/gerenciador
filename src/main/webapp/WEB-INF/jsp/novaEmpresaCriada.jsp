<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//scriptlet
	String nomeEmpresa = (String)request.getAttribute("empresa");
	System.out.println(nomeEmpresa);
%>

<html><body>

<c:import url="logout-parcial.jsp"/>

<c:if test="${not empty empresa }">
	Empresa <% out.println(nomeEmpresa); %> cadastrada com sucesso!
	<br>
	Empresa <%=nomeEmpresa%> cadastrada com sucesso!
	<br>
	Empresa ${empresa} cadastrada com sucesso!
</c:if>
<c:if test="${empty empresa }">
	Nenhuma empresa cadastrada!
</c:if>
</body></html>