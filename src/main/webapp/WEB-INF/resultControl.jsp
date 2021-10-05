<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Result Control</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../css/profile.css">
    @localhost

</head>
<body>
<jsp:include page="res/header.jsp"></jsp:include>
<h3 class="text4">user : ${pageContext.request.userPrincipal.name} `        `zxcxz
<sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Вийти</a></h4>


<div class="container" style="margin-top: 103px; margin-bottom: 70px; width: 90%;background-color: white;">
    <div style="margin-left: 10px; margin-right: 10px;">
        <h3 class="connect1">Результати</h3>
        <button type="button" data-toggle="modal" data-target="#exampleModal1" class="btn btn-info">Добавити запис</button>
        <button type="button" data-toggle="modal" data-target="#exampleModal1" class="btn btn-warning">Подивитися статистику</button>
    </div>
    <div style="margin-left: 10px; margin-right: 10px; margin-top: 15px;">
        <table class="table table-striped table-bordered table-dark">
            <thead>
            <tr>
                <th scope="col">Назва</th>
                <th scope="col">Прогрес</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${results}" var="result">
                <tr>
                    <td>${result.name}</td>
                    <td>${result.progress}</td>
                    <td></td>


                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

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
                <form method="post" action="${pageContext.request.contextPath}/resultControl">
                    <div class="form-group">
                        <label for="inputAddress1">Запис (зачекайте)</label>
                        <input type="text" class="form-control" id="inputAddress1" name="name" placeholder="Вас запис" required>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Додатково(можете записати тут інформацію)</label>
                        <input type="text" class="form-control" id="inputAddress" name="progress" placeholder="Моє важливе доповнення">
                    </div>
                    <div class="alert alert-danger" role="alert">
                        Натиснувши ви не зможете видалити запис
                    </div>
                    <button type="submit" class="btn btn-primary">Додати запис</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрити</button>
            </div>
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
