
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE HTML>
<html>
<head>
    <title>Головна</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>GYM</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../css/style.css">

</head>
<body >

<jsp:include page="res/header.jsp"></jsp:include>
<nav class="nav2 ">
    <ul class="top-menu2">
        <li class="text3"> <a href="/"> Home</a></li>
        <li>/</li>
        <li class="text3"> <a href="#">Another page</a></li>
        <li>/</li>
        <li class="text3"><a href="#" >This page</a></li>
    </ul>
</nav>
<h3 class="text4">Welcome user : ${pageContext.request.userPrincipal.name}
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
<div class="body-m">
<div class="container-fluid" style="margin-top: 16px;">
    <div class="row justify-content-center">
        <div class="col-sm" style="text-align: center;">
            <h1 class="who-title">Who are we?</h1>
            <span class="line"></span>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 40px; margin-bottom: 70px;">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <img src="../image/admiration.jpg" style="width: 100%;" alt="">
        </div>
        <div class="col-sm-6">
            <p class="who-text">We teach people to ski biathlon rifle shooting.<br> We want to make you a world-class athlete.<br><br>Want to know more and try our system for 7 days for FREE?</p>
            <sec:authorize access="!isAuthenticated()">
            <button class="who-btn">
                <a href="/registration"><span  class="who-btn-text">Реєстрація</span></a>
            </button>
            </sec:authorize>
        </div>
    </div>
</div>

<div class="container-fluid" style="margin-top: 16px;">
    <div class="row justify-content-center">
        <div class="col-sm" style="text-align: center;">
            <h1 class="who-title">We invite you to the team of coaches</h1>
            <span class="line"></span>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 40px; margin-bottom: 70px;">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <img src="https://www.depo.ua/uploads/239580/conversions/ca69039dffa4015518c251f8e102e69a-wide-big.jpg" style="width: 100%;" alt="">
        </div>
        <div class="col-sm-6">
            <p class="who-text">if you have experience training biathletes then we invite you to our wonderful and friendly team. We are waiting for you)</p>
            <sec:authorize access="!isAuthenticated()">
            <button class="who-btn">
                <a href="/registrationCoach"><span  class="who-btn-text">Реєcтрація</span></a>
            </button>
            <button class="who-btn">
                <a href="/login"><span  class="who-btn-text">Вхід</span></a>
            </button>
            </sec:authorize>
        </div>
    </div>
</div>

</div>
<jsp:include page="res/footer.jsp"></jsp:include>
</h3>
</body>
</html>