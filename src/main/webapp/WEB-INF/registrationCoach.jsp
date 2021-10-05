<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Реєстрація</title>
    <link rel="stylesheet" href="../../css/login.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />
</head>

<body>
<jsp:include page="res/header.jsp"></jsp:include>

    <div class="container">
        <div class="card card-container">
            <img class="profile-img-card" src="http://ukrainepravo.com/upload/iblock/4d2/4d2ce852cbd873b94fb5df5453ef5502.jpg" alt="" />
            <form class="form-signin" method="POST" action="/registrationCoach" >
                <form:form modelAttribute="userModel" class="form-signin"  method="POST" action="/registrationCoach">
                <h2>Реєстрація тренера </h2>
                <div>

                    <input class="form-control" type="text" name="lastName" placeholder="LastName"/>
                    <input class="form-control" type="text" name="firstName" placeholder="FirstName"/>
                    <form:errors path="userName"></form:errors>
                    ${usernameError}
                    <input  class="form-control"  name="userName" type="text" placeholder="Username"
                            autofocus="true"/>
                    <input class="form-control" type="email" name="email" placeholder="email"
                           autofocus="true">
                    <input class="form-control" name="password" type="password" placeholder="Password"/>

                    <input class="form-control" type="password" name="passwordConfirm"
                           placeholder="Confirm your password"/>
                    <form:errors path="password"></form:errors>
                    ${passwordError}

                    <input class="form-control" type="text" name="phone" placeholder="Phone" />

                    <input class="form-control" type="text" name="age" placeholder="Age" />
                    <input class="form-control" type="text" name="awards" placeholder="Awards" />
                    <input class="form-control" type="text" name="description" placeholder="Description" />

                    <input class="form-control" type="text" name="address" placeholder="Address"/>
                    <tr class="text4">
                        <td style=" font-family: Monospaced;font-size: 20px">Category</td>
                        <td>
                            <select name="categoryName" id="comboboxCountry" style="width:270px; font-family: Monospaced;font-size: 18px;">
                                <c:forEach var="category" items="${listCategory}">
                                    <option value="${category.categoryName}">${category.categoryName }</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <br><hr><br>

                    <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Реєстрація</button>

                    <h4><a class="forgot-password" href="${pageContext.request.contextPath}/registrationCoach">Login</a></h4>
                </div>
                </form:form>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/">Головна</a>
    <jsp:include page="res/footer.jsp"></jsp:include>
</div>

</body>
</html>