<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27.05.2021
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Додати категорію </title>
<head>
<link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
        crossorigin="anonymous"
/>

<link rel="stylesheet" href="../../css/login.css">
    <script src="../../js/aboutUs.js"></script>

</head>
<body>
<jsp:include page="res/header.jsp"></jsp:include>
<div class="text-return" style="width: 200px">
    <h3 class="text4">coach : ${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
</div>>
<div class="container">
    <div class="card card-container">
        <img class="profile-img-card" src="../image/addCategory.jpg" alt="" />
        <form class="form-signin" method="POST" action="/coach/addCategory" >
            <h2>Додати  категорію тренувань</h2>
            <div>
                <input  class="form-control"  name="categoryName" type="text" placeholder="CategoryName"
                        autofocus="true"/>
                <form:errors path="categoryName"></form:errors>
                ${categoryError}

                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Додавати тренування</button>

                <h4><a class="forgot-password" href="${pageContext.request.contextPath}/coach/deleteCategory">Дивитися всі категорії тренувань</a></h4>
            </div>
        </form>
    </div>
</div>
<h4><a class="text-return forgot-password"  href="${pageContext.request.contextPath}/coach/main">Головна тренера</a></h4>

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
