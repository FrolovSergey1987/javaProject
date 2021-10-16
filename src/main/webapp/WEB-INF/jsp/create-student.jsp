<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/styles.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
    <title>Создать студента</title>
</head>

<body>
<div class="wall">
    <header class="title">
        <span class="title-system">Система управления студентами и их успеваемостью</span>
        <c:choose>
            <c:when test="${isLogin == true}">
                <a class="title-logout" href="/logout">Выйти из ${login}</a>
            </c:when>
            <c:otherwise>
                <a href="/login">Войти</a>
            </c:otherwise>
        </c:choose>
    </header>

    <a class="to-main-page" href="/index.jsp">На главную</a>
    <a class="to-main-page" href="/students">Назад</a>

    <h3>Для создания студента заполните все поля и нажмите кнопку "Создать"</h3>
    <form method="post" action="/create-student">
        <label>Фамилия</label> <input type="text" name="surname"><br>
        <label>Имя</label> <input type="text" name="name"><br>
        <label>Группа</label> <input type="text" name="group"><br>
        <label>Дата поступления</label> <input type="text" id="datepicker" name="date"><br>
        <input type="submit" value="Создать">

        <c:if test="${error eq 1}">
            <h4>Поля не должны быть пустыми!</h4>
        </c:if>

    </form>
</div>
</body>
</html>