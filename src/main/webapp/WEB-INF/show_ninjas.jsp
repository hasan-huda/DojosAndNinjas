<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Dojo</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>
                    <c:out value="${dojo.name}"/>'s Ninjas
                </h1>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Age</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ninja" items="${dojo.ninjas}">
                            <tr>
                                <td><c:out value="${ninja.firstName}"/></td>
                                <td><c:out value="${ninja.lastName}"/></td>
                                <td><c:out value="${ninja.age}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>