<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27.05.2021
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Search users</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/coach.css"/>
</head>
<body>

<jsp:include page="res/header.jsp"></jsp:include>
<h3 class="text4">coach : ${pageContext.request.userPrincipal.name}
<div class="container-fluid" style="margin-top: 93px;">

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal1" style="margin-left: 30px;margin-bottom: 30px;">
        Знайти користувача
    </button>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Знайти</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/coach/searchUser">
                        <div class="form-group">
                            <label for="inputAddress">Номер(id)</label>
                            <input type="text" class="form-control" name="id" id="inputAddress" placeholder="998234" pattern="[0-9]+">
                        </div>
                        <div class="form-group">
                            <label for="lastName">Прізвище</label>
                            <input type="text" class="form-control" name="lastName" id="lastName" placeholder="LastName" pattern="A-Я">
                        </div>

                        <div class="form-group">
                            <label >E-mail</label>
                            <input type="text" class="form-control" name="email" placeholder="mail@gmail.com" pattern="[a-zA-z0-9]+@[a-zA-Z]+[.][a-zA-z]+">
                        </div>
                        <button type="submit" class="btn btn-primary">Знайти</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрити</button>
                </div>
            </div>
        </div>
    </div>

    <table class="table table-striped table-bordered table-dark">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Прізвище</th>
            <th scope="col">І'мя</th>
            <th scope="col">Номер телефона</th>
            <th scope="col">Адреса</th>
            <th scope="col">Електронна пошта</th>
            <th scope="col">Вік</th>
            <th scope="col">Вага</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.lastName}</td>
                <td>${user.firstName}</td>
                <td>${user.phone}</td>
                <td>${user.address}</td>
                <td>${user.email}</td>
                <td>${user.age}</td>
                <td>${user.weight}</td>

            </tr>
        </c:forEach>
        </tbody>
    </table>

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
