
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="../../css/footer.css">
</head>

<body>
<div class="footer-basic">
    <footer>
        <div class="social"><a href="https://www.instagram.com/?hl=uk">
            <i class="icon ion-social-instagram"></i></a>
            <a href="https://www.snapchat.com/"><i class="icon ion-social-snapchat"></i></a>
            <a href="https://twitter.com/?lang=uk"><i class="icon ion-social-twitter"></i></a>
            <a  href="https://www.facebook.com/"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="${pageContext.request.contextPath}/">Головна</a></li>
            <li class="list-inline-item"><a href="${pageContext.request.contextPath}/сhoiceSubsription">Абонементи</a></li>
            <li class="list-inline-item"><a href="${pageContext.request.contextPath}/aboutUs">Про нас</a></li>
            <li class="list-inline-item"><a href="${pageContext.request.contextPath}/addPlan">Тренування</a></li>
            <li class="list-inline-item"><a href="#">Приватна політика</a></li>
        </ul>
        <p class="copyright">GymClub © 2022</p>
    </footer>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>

