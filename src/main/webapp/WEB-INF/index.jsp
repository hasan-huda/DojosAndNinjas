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
<title>Dojos and Ninjas</title>
</head>
<body>
    <div class="container">
        <div class="card mt-5">
            <div class="card-header">
                <h1>Dojos and Ninjas</h1>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <a class="btn btn-primary" href="/dojos/new" role="button">Create a New Dojo</a>
                </div>
                <div class="row mb-3">
                    <a class="btn btn-primary" href="/ninjas/new" role="button">Create a New Ninja</a>
                </div>
                <div class="row mb-3">
                    <a class="btn btn-primary" href="/dojos" role="button">Show Dojos</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>