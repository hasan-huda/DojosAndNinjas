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
<title>New Dojo</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>New Dojo</h1>
            </div>
            <div class="card-body">
                <form:form class="form" action="/dojos/add" method="post" modelAttribute="dojo">
                	<form:label class="form-label" path="name">Name:</form:label>
                	<form:input class="form-control" path="name" />
                    <form:errors class="form-text text-danger" path="name" />
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>