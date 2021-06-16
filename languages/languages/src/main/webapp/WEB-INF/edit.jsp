<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<style>
    .container {
        margin: 200px;
    }
</style>
</head>
<body>
	<div class="container">
		<a href="/${language.id}/edit">Edit</a>
		<a href="/${language.id}/delete">Delete</a>
	
		<form:form action="/${language.id}/update" method="post" modelAttribute="language">
		    <p>
		        <form:label path="name">Name:</form:label>
		        <form:errors path="name"/>
		        <form:input type="text" path="name"/>
		    </p>
		    <p>
		        <form:label path="creator">Creator:</form:label>
		        <form:errors path="creator"/>
		        <form:input type="text" path="creator"/>
		    </p>
		    <p>
		        <form:label path="version">Version:</form:label>
		        <form:errors path="version"/>
		        <form:input type="number" step="any" path="version"/>
		    </p>
		    <input type="submit">
		</form:form>
	</div>
</body>
</html>