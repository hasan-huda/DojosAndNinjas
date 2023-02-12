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
<title>Dojos</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>Dojos</h1>
            </div>
            <div class="card-body">
                <c:forEach var="dojo" items ="${dojos}">
                    <div class="row mb-3">
                        <a href="/dojos/${dojo.id}" class="btn btn-primary" role="button">
                            <c:out value="${dojo.name}"/>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>