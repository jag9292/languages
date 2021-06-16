<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>${language.name}</h3>
	<h3>${language.creator}</h3>
	<h3>${language.version}</h3>
	<a href="/${language.id}/edit">Edit</a>
	<a href="/${language.id}/delete">Delete</a>
</body>
</html>