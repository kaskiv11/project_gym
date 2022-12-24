<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>About us</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"/>
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/about.css">
    <link rel="stylesheet" href="../../css/responsive.css">
    <script src="../../css/aboutUs.js"></script>


</head>

<body class="body-m">
<jsp:include page="res/header.jsp"></jsp:include>
<div>
<nav class="nav2 ">
    <ul class="top-menu2">
        <li class="text3"> <a href="/"> Головна</a></li>
        <li>/</li>
        <li class="text3"> <a href="#">Інша</a></li>
        <li>/</li>
        <li class="text3"><a href="${pageContext.request.contextPath}/aboutUs" >Ця сторвнка</a></li>
    </ul>
</nav>
</div>
    <h3>${pageContext.request.userPrincipal.name}</h3>
<div class="container-fluid" style="margin-top: 16px;">
    <div class="row justify-content-center">
        <div class="col-sm" style="text-align: center;">
            <h1 class="who-title">Хто ми?</h1>
            <span class="line"></span>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 40px; margin-bottom: 70px;">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <img src="../image/admiration.jpg" style="width: 100%;" alt="">
        </div>
        <div class="col-sm-6">
            <p class="who-text">Навчаємо людей ставати кращими.<br>Ми хочемо зробити з вас спортсмена світового рівня.<br><br>Хочете дізнатися більше та спробувати нашу систему протягом 7 днів БЕЗКОШТОВНО?</p>
<sec:authorize access="!isAuthenticated()">
            <button class="who-btn">
                <a href="/registrationCoach"><span  class="who-btn-text">Реєcтрація</span></a>
            </button>
            <button class="who-btn">
                <a href="/login"><span  class="who-btn-text">Вхід</span></a>
            </button>
</sec:authorize>
        </div>
    </div>
</div>


    <div class="responsive-container-block outer-container">
        <div class="responsive-container-block inner-container">
            <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-4 wk-ipadp-4 headings-container">
                <p class="text-blk heading-text" style="color: #fdeaea; background-color:#180101;">Наша чудова команда
                </p>
                <p class="text-blk sub-heading-text">
                </p>
            </div>
            <div class="responsive-cell-block wk-desk-8 wk-ipadp-8 wk-tab-12 wk-mobile-12 team-members-container">
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
                    <div class="card">
                        <img src="https://thumbs.dreamstime.com/z/%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80-%D1%84%D0%B8%D1%82%D0%BD%D0%B5%D1%81-%D0%BA%D0%BB%D1%83%D0%B1%D0%B0-119809214.jpg" class="card-img" />
                        <p class="text-blk name">Оксана Велика
                        </p>
                        <p class="text-blk position">Адміністратор
                        </p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
                    <div class="card">
                        <img src="https://cdn.fishki.net/upload/post/2020/03/25/3266983/baaf1e03e3fe1bb5604223071c69a2ad.jpg" class="card-img" />
                        <p class="text-blk name">Петро Петров
                        </p>
                        <p class="text-blk position">Тренер
                        </p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
                    <div class="card">
                        <img src="https://fitunion.pro/uploads/images/trainers/1010/1010-medium.jpg?v=305239" class="card-img" />
                        <p class="text-blk name">Максим Максименко
                        </p>
                        <p class="text-blk position">Тренер
                        </p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
                    <div class="card">
                        <img src="https://warez-portal.kiev.ua/wp-content/uploads/c4f77445991e60228808d44dac78204d.jpg" class="card-img" />
                        <p class="text-blk name">Ульяна Лін
                        </p>
                        <p class="text-blk position">тренерка
                        </p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
                    <div class="card">
                        <img src="https://foodandmood.com.ua/i/24/84/26/3/2484263/image_main/b4fc72a64dc7d99883f6e0257982c125-quality_75Xresize_crop_1Xallow_enlarge_0Xw_740Xh_493.jpg" class="card-img" />
                        <p class="text-blk name">Світлана Давно
                        </p>
                        <p class="text-blk position">Тренерка
                        </p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
                    <div class="card">
                        <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/ft14.svg" class="card-img" />
                        <p class="text-blk name">Роман Романов
                        </p>
                        <p class="text-blk position">Тренер
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


<div class="container-r ">
    <div style="text-align:center">
        <h2 >Запитання відвідувачів тренажерного залу</h2>
    </div>
    <div class="row">
        <div class="column">
            <iframe   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2574.3082679044833!2d24.010916515569534!3d49.817871079393015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473ae78e152c731d%3A0xdf3165132b9e58d8!2z0JPRg9GA0YLQvtC20LjRgtC-0Log4oSWMTUg0J3QoyAi0JvRjNCy0ZbQstGB0YzQutCwINC_0L7Qu9GW0YLQtdGF0L3RltC60LAi!5e0!3m2!1suk!2sua!4v1668114529760!5m2!1suk!2sua" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>
        <div class="column">
            <form action="/action_page.php">
                <label for="fname">Ім'я</label>
                <input type="text" id="fname" name="firstname" placeholder="Ваше ім'я..">
                <label for="lname">Прізвище</label>
                <input type="text" id="lname" name="lastname" placeholder="Ваше прізвище..">
                <label for="email">Електронна пошта</label>
                <input type="text" id="email" name="email" placeholder="Email">

                <label for="subject">Запитання</label>
                <textarea id="subject" name="subject" placeholder="Напишіть щось...." style="height:170px"></textarea>
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
</div>

</body>
</html>
<div class="container demo-bg " style="margin-top:150px; ">
    <h2  class="с" style="text-align: center">Наші контакти та адреса</h2>
    <div class="row">

        <div class="col-sm-4">

            <iframe   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2574.3082679044833!2d24.010916515569534!3d49.817871079393015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473ae78e152c731d%3A0xdf3165132b9e58d8!2z0JPRg9GA0YLQvtC20LjRgtC-0Log4oSWMTUg0J3QoyAi0JvRjNCy0ZbQstGB0YzQutCwINC_0L7Qu9GW0YLQtdGF0L3RltC60LAi!5e0!3m2!1suk!2sua!4v1668114529760!5m2!1suk!2sua" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>
        <div class="col-sm-4" align="r" >
        </div>

        <div class="col-sm-4">
            <div class="business-hours">
                <h2 class="title">Графік роботи</h2>
                <ul class="list-unstyled opening-hours">
                    <li>Понеділок <span class="pull-right">Відкрито</span></li>
                    <li>Вівторок <span class="pull-right">9:00-22:00</span></li>
                    <li>Середа <span class="pull-right">9:00-22:00</span></li>
                    <li>Четвер<span class="pull-right">9:00-22:00</span></li>
                    <li>П'ятниця<span class="pull-right">9:00-22:00</span></li>
                    <li>Субота <span class="pull-right">9:00-23:30</span></li>
                    <li>Неділя <span class="pull-right">10:00-21:00</span></li>
                </ul>
                <address>
                    <p class="email-address">EMAIL <a href = "mailto: sportlviv@gmail.com">sportlviv@gmail.com</a><br>
                        Cайт: <a href="#">SportClub.com</a><br>
                        Телефон: <a href="tel:+38085000055">+38085000055</a><br>
                        Адреса: Лазаренка 42<br>
                        Місто: Львів
                    </p>
                </address>
            </div>
        </div>
    </div>
</div>
<jsp:include page="res/footer.jsp"></jsp:include>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

