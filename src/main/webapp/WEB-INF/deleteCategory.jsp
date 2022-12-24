<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27.05.2021
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Видалити категорію тренувань за потреби </title>
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
<div class="text-return" style="width: 400px">
<h3 class="text4">coach : ${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
<h4 class="text4 text-return"> Видалити категорію тренувань за потреби </h4>
</div>
<table class="table table-striped table-bordered table-dark">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Назва категорії </th>
        <th scope="col">Видалити </th>


    </tr>
    </thead>
    <tbody>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.categoryName}</td>

            <td>
                <form action="${pageContext.request.contextPath}/coach/deleteCategory" method="post">
                    <input type="hidden" name="categoryId" value="${category.id}"/>
                    <input type="hidden" name="action" value="delete"/>
                    <button class="btn btn-secondary" type="submit">Delete</button>
                </form>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<h4><a class="forgot-password text-return" href="${pageContext.request.contextPath}/coach/main">Головна тренера</a></h4>


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

