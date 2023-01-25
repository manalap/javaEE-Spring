<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title><spring:message code="tietokone.list.title" /></title>
<link rel="stylesheet" type="text/css"
	href="resources/styles/common.css">
<link rel="stylesheet" type="text/css" href="resources/styles/form.css">

</head>
<body>
	<div id="langsel">
		<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a> | <a
			href="?lang=sv">sv</a>
	</div>
	<h1>
		<spring:message code="tietokone.list.heading" />
	</h1>
	<c:forEach var="tietokone" items="${tietokoneet}">
		<p>${tietokone.merkki}ja ${tietokone.malli}</p>
	</c:forEach>

	<p>
		<a href="lomake">Syötä uusi</a>
</body>
</html>