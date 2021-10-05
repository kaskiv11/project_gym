<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26.05.2021
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Головна тренера</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../css/coach.css">
</head>
<body>

<jsp:include page="res/header.jsp"></jsp:include>

<h3 class="text4">coach : ${pageContext.request.userPrincipal.name}
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
<div class="container" style="margin-top: 103px; margin-bottom: 70px; width: 90%;background-color: #C4C4C4;">
    <div class="row">
        <div class="col-sm" style="text-align: center;">
            <a href="${pageContext.request.contextPath}/coach/addUser">
                <img src="../image/addUser.png"  style="width: 66px; margin-bottom: 10px;" alt=""><br>
                <span class="user-text">Додати користувача </span>
            </a>
        </div>
        <div class="col-sm" style="text-align: center;">
            <a href="${pageContext.request.contextPath}/coach/deleteUser">
                <img src="../image/deleteUser.png" style="width: 66px;margin-bottom: 10px;" alt=""><br>
                <span class="user-text">Видалити користувача</span>
            </a>
        </div>
        <div class="col-sm" style="text-align: center;">
            <a href="${pageContext.request.contextPath}/coach/searchUser">
                <img src="../image/searchUser.png" style="width: 73px; margin-bottom: 4px;" alt=""><br>
                <span class="user-text">Пошук користувачів</span>
            </a>
        </div>

        <div class="col-sm" style="text-align: center;">
            <a href="addTraining">
                <img src="../image/addTraining.jpg"  style="width: 76px;" alt=""><br>
                <p class="user-text">Додати тренування</p>
            </a>
        </div>
    </div>
    <div class="row" style="margin-top: 40px; padding-bottom:40px;">
        <div class="col-sm" style="text-align: center;">
            <a href="${pageContext.request.contextPath}/coach/addCategory">
                <img src="../image/addCategory.jpg" style="width: 66px; margin-bottom: 15px;" alt=""><br>
                <span class="user-text">Додати категорію</span>
            </a>
        </div>
        <div class="col-sm" style="text-align: center;">
            <a href="${pageContext.request.contextPath}/coach/deleteCategory">
                <img src="../image/deleteCategory.png" style="width: 66px;margin-bottom: 15px;" alt=""><br>
                <span class="user-text">Видалити категорію</span>
            </a>
        </div>
        <div class="col-sm" style="text-align: center;">
            <a href="${pageContext.request.contextPath}/coach/deleteTraining">
                <img src="../image/deletePlan.jpg" style="width: 62px; margin-top: 10px; margin-bottom: 10px;" alt=""><br>
                <span class="user-text">Видалити тренування</span>
            </a>
        </div>
        <div class="col-sm" style="text-align: center;">

        </div>
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