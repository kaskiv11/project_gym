<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25.05.2021
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />

    <link rel="stylesheet" href="../../css/login.css">

</head>
<body>
<jsp:include page="res/header.jsp"></jsp:include>
<div class="container">
    <div class="card card-container">
        <img class="profile-img-card" src="https://i.kagutech.com/img/kompyuteri/446/kak-sozdat-login-i-parol-dlya-registracii-2.jpg" alt="" />
        <form class="form-signin" method="POST" action="/j_spring_security_check">
            <h2>Вхід в систему</h2>
            <div>
                <input  class="form-control"  name="username" type="text" placeholder="Username"
                        autofocus="true"/>
                <form:errors path="password"></form:errors>
                ${userError}
                <input class="form-control" name="password" type="password" placeholder="Password"/>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Log In</button>
<sec:authorize access="isAuthenticated()">
                <h4><a class="forgot-password" href="/registration">Реєстрація</a></h4>
</sec:authorize>
            </div>
        </form>
    </div>
</div>
<jsp:include page="res/footer.jsp"></jsp:include>
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

</body>
</html>
