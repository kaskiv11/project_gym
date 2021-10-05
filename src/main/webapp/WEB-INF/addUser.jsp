<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28.05.2021
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Додати користувача</title>
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
<h3 class="text4">coach : ${pageContext.request.userPrincipal.name}
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
<div class="container" style="margin-top: 93px; margin-bottom: 70px;">
    <h2 style="margin-bottom: 30px; color: #f23849;  text-align: center;">Додати нового користувача</h2>
    <form method="post" action="${pageContext.request.contextPath}/coach/addUser">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="firstName">І'мя</label>
                <input type="text" name="firstName" class="form-control" id="firstName" placeholder="І'мя" required pattern="[а-яА-Яa-zA-Z]+">
            </div>
            <div class="form-group col-md-6">
                <label for="lastName">Прізвище</label>
                <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Прізвище" required pattern="[а-яА-Яa-zA-Z]+">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmail4">Email</label>
                <input type="email" name="email" class="form-control" id="inputEmail4" placeholder="example@gmail.com" pattern="[a-zA-z0-9]+@[a-zA-Z]+[.][a-zA-z]+">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPassword4">Пароль</label>
                <input type="password" name="password" class="form-control" id="inputPassword4" placeholder="Введіть 1234">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPassword42">Повторити пароль</label>
                <input type="password" name="passwordConfirm" class="form-control" id="inputPassword42" placeholder="Повторити  пароль">
                <form:errors path="password"></form:errors>
                ${passwordError}
            </div>

            <div class="form-group col-md-6">
                <label for="userName">Користувач </label>
                <input type="text" name="userName" class="form-control" id="userName" placeholder="Username">
                <form:errors path="userName"></form:errors>
                ${userError}
            </div>
        </div>
        <div class="form-group">
            <label for="phone">Телефон</label>
            <input type="text" name="phone" class="form-control" id="phone" placeholder="0506698747" required pattern="[0-9]+">
        </div>

        <div class="form-group">
            <label for="weight">Вага</label>
            <input type="text" class="form-control" name="weight" id="weight" placeholder="123">
        </div>
        <div class="form-group">
            <label for="age">Вік</label>
            <input type="text" class="form-control" name="age" id="age" placeholder="100">
        </div>
        <div class="form-group">
            <label for="inputAddress">Адреса</label>
            <input type="text" class="form-control" name="address" id="inputAddress" placeholder="вул. Тараса Шевченка, 123">
        </div>

        <button type="submit" class="btn btn-primary">Зареєструвати нового користувача</button>
    </form>
</div>
<h4><a class="forgot-password" href="${pageContext.request.contextPath}/coach/main">Головна тренера</a></h4>

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
