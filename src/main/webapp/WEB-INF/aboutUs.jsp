<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.05.2021
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>About us</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"/>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<div class="body-m">
<jsp:include page="res/header.jsp"></jsp:include>
<div>
<nav class="nav2 ">
    <ul class="top-menu2">
        <li class="text3"> <a href="/"> Home</a></li>
        <li>/</li>
        <li class="text3"> <a href="#">Another page</a></li>
        <li>/</li>
        <li class="text3"><a href="${pageContext.request.contextPath}/aboutUs" >This page</a></li>
    </ul>
</nav>
</div>
    <h3>${pageContext.request.userPrincipal.name}</h3>
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
                <a href="/registrationCoach"><span  class="who-btn-text">Реєcтрація</span></a>
            </button>
            <button class="who-btn">
                <a href="/login"><span  class="who-btn-text">Вхід</span></a>
            </button>
</sec:authorize>
        </div>
    </div>
</div>


<p class="who-title" style="text-align: center">Brief information</p>
</div>
<div class="container" style="margin-top: 20px; margin-bottom: 20px;">
    <div class="row justify-content-center">
        <div class="col-sm" style="text-align: center;">
            <img  class="image-3" src="https://s3.eu-central-1.amazonaws.com/img.hromadske.ua/posts/images/000/039/427/medium/data" style="margin-bottom: 10px;" alt="">
            <h3 class="serv-tit">Endurance</h3>
            <p class="text-p">if you want to become a professional athlete you need to train a lot</p>
        </div>
        <div class="col-sm" style="text-align: center;">
            <img class="image-3" src="https://static.ua-football.com/img/upload/18/24dad0.jpeg" style="margin-bottom: 10px;" alt="">
            <h3 class="serv-tit">Personal trainer</h3>
            <p class="text-p">Without a doubt, consistent training is the most important aspect of fitness success and forward progress. At Fast Lean Fit™, our trainers are the experts in holding you accountable. We will push and challenge you every time you show up.</p>
        </div>
        <div class="col-sm" style="text-align: center;">
            <img class="image-3" src="https://novynarnia.com/wp-content/uploads/2016/03/Valentina-Valya-Semerenko-biatlon.jpg" style="margin-bottom: 10px;" alt="">
            <h3 class="serv-tit">Professional equipment</h3>
            <p class="text-p">We have a wide selection of ski and biathlon rifles. They are tested by specialists of international class.</p>
        </div>
    </div>
</div>


<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"
        integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04="
        crossorigin="anonymous"
></script>
<jsp:include page="res/footer.jsp"></jsp:include>
</body>
</html>
