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
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>New Ninja</h1>
            </div>
            <div class="card-body">
                <form:form class="form" action="/ninjas/add" method="post" modelAttribute="ninja">
                    <div class="row mb-3">
                        <form:label class="form-label" path="dojo">Dojo:</form:label>
                        <form:select class="form-select" path="dojo" >
                            <c:forEach var="dojo" items ="${dojos}">
                                <form:option value="${dojo.id}">
                                    <c:out value="${dojo.name}"/>
                                </form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="row mb-3">
                        <form:label class="form-label" path="firstName">First Name:</form:label>
                        <form:input class="form-control" path="firstName" />
                        <form:errors class="form-text text-danger" path="firstName" />
                    </div>
                    <div class="row mb-3">
                        <form:label class="form-label" path="lastName">Last Name:</form:label>
                        <form:input class="form-control" path="lastName" />
                        <form:errors class="form-text text-danger" path="lastName" />
                    </div>
                    <div class="row mb-3">
                        <form:label class="form-label" path="age">Age:</form:label>
                        <form:input type="number" class="form-control" path="age" />
                        <form:errors class="form-text text-danger" path="age" />
                    </div>
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