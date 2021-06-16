<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    .container {
        margin: 200px;
    }
    table {
        border: 2px solid black;
        margin-bottom: 100px;
    }
    table th {
        border: 2px solid black;
    }
    table td {
        border: 2px solid black;
        padding: 10px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="top">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Creator</th>
                        <th>Version</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items= "${languages}" var="language">
                        <tr>
                            <td><a href="/${language.id}/info">${language.name}</a></td>
                            <td>${language.creator}</td>
                            <td>${language.version}</td>
                            <td><a href="/${language.id}/delete">Delete</a> | <a href="/${language.id}/edit">Edit</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="bottom">
            <form:form action="/create" method="post" modelAttribute="language">
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
    </div>
</body>
</html>