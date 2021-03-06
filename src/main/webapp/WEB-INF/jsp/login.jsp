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

    <title>Логин</title>
</head>

<body>
<div class="wall">
    <header class="title">
        <span class="title-system">Система управления студентами и их успеваемостью</span>
    </header>

    <a class="to-main-page" href="/index.jsp">На главную</a>

    <h3>Вход в систему: </h3>
    <form method="post" action="/login">
        <label>Логин</label> <input type="text" name="login">
        <label>Пароль</label> <input type="password" name="password">
        <label>Выберите роль: </label>
        <select name="role">
            <option value="1">Администратор</option>
            <option value="2">Учитель</option>
            <option value="3">Студент</option>
        </select>
        <input type="submit" value="Войти">
        <div>
            <details>
                <summary class="testAcc">Аккаунт для проверки функционала : </summary>
        <span>Логин : admin </span><br>
        <span>Пароль : 123</span>
            </details>
        </div>
        <c:if test="${error eq 1}">
            <h4>Поля не должны быть пустыми!</h4>
        </c:if>

        <c:if test="${error eq 2}">
            <h4>Такой пользователь не найден!</h4>
        </c:if>

    </form>
</div>
</body>
</html>