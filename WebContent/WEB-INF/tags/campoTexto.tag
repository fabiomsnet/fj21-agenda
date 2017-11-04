<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="rotulo" required="true"%>
<%@ attribute name="id" required="true"%>

<label for="${id}">${rotulo}</label>
<input type="text" id="${id}" name="${id}">