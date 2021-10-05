<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.05.2021
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="../../css/header.css">
</head>

<body>
<div>
    <div class="header-dark">
        <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
            <div class="container"><a class="navbar-brand" href="#">Biathlon<span class="colo-b">C</span>lub</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                     id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/">Home</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/aboutUs">About us</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/chooseCoach">Couch</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/addPlan">Plan</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/resultControl">Result</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/coach/main">For the coach</a></li>

                    <sec:authorize access="!isAuthenticated()">
                    <a class="btn btn-light action-button" role="button" href="${pageContext.request.contextPath}/login">Login</a><a class="btn btn-light action-button" role="button" href="${pageContext.request.contextPath}/registration">Sign Up</a>
                    </sec:authorize>
    </div>
            </div>
        </nav>
        <div class="container hero">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h1 class="text-t">You can achieve high results with us</h1>
                    <div class="embed-responsive embed-responsive-16by9"><iframe class="embed-responsive-item"></iframe></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>


</html>
