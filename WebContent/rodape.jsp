<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean class="java.util.Date" id="data" />
<fmt:formatDate pattern="yyyy" value="${data}" var="anoAtual" />
<hr />
Copyright ${anoAtual} - Todos os direitos reservados
