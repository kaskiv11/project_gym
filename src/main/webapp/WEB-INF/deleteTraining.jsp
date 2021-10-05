<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10.06.2021
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete training</title>
</head>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Delete Users</title>
    <link
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/coach.css"/>
    <link rel="stylesheet" href="../css/login.css"/>


</head>
<body class="lom">
<jsp:include page="res/header.jsp"></jsp:include>
<h3 class="text4">coach : ${pageContext.request.userPrincipal.name}
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
    <h4 class="text4"> Видалити тренування за потреби </h4>

    <table class="table table-striped table-bordered table-dark">
        <thead>
        <tr>
            <th scope="col">Назва </th>
            <th scope="col">Початок</th>
            <th scope="col">Кінець</th>
            <th scope="col">Видалити </th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${trainingList}" var="training">
            <tr>
                <td>${training.title}</td>
                <td>${training.start}</td>
                <td>${training.end}</td>

                <td>
                    <form action="${pageContext.request.contextPath}/coach/deleteTraining" method="post">
                        <input type="hidden" name="trainingId" value="${training.id}"/>
                        <input type="hidden" name="action" value="delete"/>
                        <button class="btn btn-secondary" type="submit">Delete</button>
                    </form>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
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
