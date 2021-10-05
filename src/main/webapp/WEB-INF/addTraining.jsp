<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10.06.2021
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Додати тренування </title>
    <head>
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
    <div class="container">
        <div class="card card-container">
            <img class="profile-img-card" src="../image/addCategory.jpg" alt="" />
            <form class="form-signin" method="POST" action="/coach/addTraining" >
                <h2>Додати тренуванння </h2>
                <div>
                    <input  class="form-control"  name="title" type="text" placeholder="Title"
                            autofocus="true"/>
                    <form:errors path="trainingError"></form:errors>
                    ${trainingError}
                    <input class="form-control"  type="date" id="meeting-time"
                           name="start" value="2020-06-12"
                           min="2020-06-12" max="2030-06-14">
                    <input class="form-control"  type="date" id="meeting-time"
                           name="end" value="2020-06-12"
                           min="2020-06-12" max="2030-06-14">

                    <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Додавати тренування</button>

                </div>
            </form>
        </div>
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
</body>
</html>
