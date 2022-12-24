
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
    <link rel="stylesheet" href="../../css/response.css">


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
            <h1 style="color: black">Хто ми?</h1>
            <span class="line"></span>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 40px; margin-bottom: 70px;">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <img src="https://hiitworks.com/wp-content/uploads/2020/03/vyacheslav-volejnyk-hiitworks-foto.jpg" style="width: 100%;" alt="">
        </div>
        <div class="col-sm-6">
            <p class="who-text">Ми тренуємося найкращих, а ви стаєте кращими з нами.<br> Ми хочемо зробити з вас спортсмена світового рівня.<br><br>Хочете дізнатися більше та спробувати нашу систему протягом 7 днів БЕЗКОШТОВНО?</p>
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
            <h1 class="who-title">Запрошуємо в команду тренерів</h1>
            <span class="line"></span>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 40px; margin-bottom: 70px;">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <img src="https://hop-sport.ua/image/catalog/information/24.jpg" style="width: 100%;" alt="">
        </div>
        <div class="col-sm-6">
            <p class="who-text">Якщо у вас є досвід тренувань у зал та роботи зі спортсменами, то запрошуємо вас у нашу чудову та дружню команду.<p> <b>Ми чекаємо на Вас!!!!👌</b></p></p>
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
    <h1 class="who-title" style="align-content: center">Відгуки клієтів</h1>
    <div class="containers">
        <img class="img"  src="https://content2.rozetka.com.ua/goods/images/original/183586739.jpg" alt="Avatar" style="width:90px">
        <p><span class="span">Христина Next.</span> Відвідувач.</p>
        <p>Тренуюся давно, дуже задоволена.</p>
    </div>

    <div class="containers">
        <img class="img" src="https://cdn.create.vista.com/api/media/small/425569416/stock-photo-the-man-covers-his-face" alt="Avatar" style="width:90px">
        <p><span  class="span">Петро Миколів.</span> Відвідувач залу.</p>
        <p>Тренуюся 2 роки. Команда чудова))</p>
    </div>
</div>




<jsp:include page="res/footer.jsp"></jsp:include>
</h3>
</body>


</html>