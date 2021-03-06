<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Strona główna</title>

    <link rel="stylesheet" href="<c:url value="../../resources/css/style.css"/>"/>
</head>
<body>

<%@include file="fragments/header.jspf" %>

<section class="stats">
    <div class="container container--85">
        <div class="stats--item">
            <em>${allQuant}</em>

            <h3>Oddanych worków</h3>
            <p>I ty możesz zwiększyć sumę oddanych worków oddając dowolną ilość darów!</p>
        </div>

        <div class="stats--item">
            <em>${suppInst}</em>
            <h3>Wspartych organizacji</h3>
            <p>I ty możesz wesprzeć dowolnie wybraną przez siebie organizację!</p>
        </div>

    </div>
</section>

<section class="steps" id="section2">
    <h2>Wystarczą 4 proste kroki</h2>

    <div class="steps--container">
        <div class="steps--item">
            <span class="icon icon--hands"></span>
            <h3>Wybierz rzeczy</h3>
            <p>ubrania, zabawki, sprzęt i inne</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--arrow"></span>
            <h3>Spakuj je</h3>
            <p>skorzystaj z worków na śmieci</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--glasses"></span>
            <h3>Zdecyduj komu chcesz pomóc</h3>
            <p>wybierz zaufane miejsce</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--courier"></span>
            <h3>Zamów kuriera</h3>
            <p>kurier przyjedzie w dogodnym terminie</p>
        </div>
    </div>

    <a href="/users/create" class="btn btn--large">Załóż konto</a>
</section>

<section class="about-us" id="section3">
    <div class="about-us--text">
        <h2>O nas</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas vitae animi rem pariatur incidunt libero
            optio esse quisquam illo omnis.</p>
        <img src="../../resources/images/signature.svg" class="about-us--text-signature" alt="Signature"/>
    </div>
    <div class="about-us--image"><img src="<c:url value="../../resources/images/about-us.jpg"/>" alt="People in circle"/>
    </div>
</section>

<section class="help" id="section4">
    <h2>Komu pomagamy?</h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>W naszej bazie znajdziesz listę zweryfikowanych Fundacji, z którymi współpracujemy.
            Możesz sprawdzić czym się zajmują.</p>

        <ul class="help--slides-items">
            <c:if test="${empty institutions}">
                <p style="text-align: center">Brak danych</p>
            </c:if>

            <c:if test="${not empty institutions}">
                <li>
                    <c:forEach items="${institutions}" var="institution" varStatus="stat">
                        <div class="col">
                            <div class="title">${institution.name}</div>
                            <div class="subtitle">${institution.description}</div>
                        </div>
                        <c:if test="${stat.count % 2 == 0 && !stat.last}">
                </li>
                <li>
                        </c:if>
                    </c:forEach>
                </li>
            </c:if>

        </ul>
    </div>

</section>

<%@include file="fragments/footer.jspf" %>

<script src="<c:url value="../../resources/js/app.js"/>"></script>
</body>
</html>
