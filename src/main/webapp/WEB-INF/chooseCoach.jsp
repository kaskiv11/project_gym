<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28.05.2021
  Time: 19:19
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

<h4 class="text4"> Вибір тренера</h4>
<h3 class="text4">coach : ${pageContext.request.userPrincipal.name}
    <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
<table class="table table-striped table-bordered table-dark">
    <thead>
    <tr>
        <th scope="col">Lastname</th>
        <th scope="col">Firstname </th>
        <th scope="col">Phone</th>
        <th scope="col">Awards</th>
        <th scope="col">Description</th>


    </tr>
    </thead>
    <tbody>
    <c:forEach items="${coaches}" var="coach">
        <tr>
            <td>${coach.lastName}</td>
            <td>${coach.firstName}</td>
            <td>${coach.phone}</td>
            <td>${coach.awards}</td>
            <td>${coach.description}</td>


            <td>
                <form action="${pageContext.request.contextPath}/chooseCoach" method="post">
                    <input type="hidden" name="coachId" value="${coach.id}"/>
                    <input type="hidden" name="action" value="addCoach"/>
                    <button class="btn btn-secondary" type="submit">Сhoose  coach</button>
                </form>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>



<jsp:include page="res/footer.jsp"></jsp:include>

<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="training
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"
        integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04="
        crossorigin="anonymous"
></script>

</body>
</html>
