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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/js/Function.js"></script>
    <title>Семестры</title>
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

    <a class="to-main-page" href="/">На главную</a><br>

    <form action="/terms" method="get">
        <label>Выбрать семестр</label>
        <select name="idSelected">
            <c:forEach items="${terms}" var="t">
                <c:choose>
                    <c:when test="${t.id == selectedTerm.id}">
                        <option selected value="${t.id}">${t.name}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${t.id}">${t.name}</option>
                    </c:otherwise>
                </c:choose>

            </c:forEach>
        </select>

        <input type="submit" value="Выбрать"><br>
    </form>
    <label>Длительность семестра: ${selectedTerm.duration}</label><br>

    <span>Список дисциплин</span>
    <table>
        <tr>
            <th></th>
            <th>Наименование дисциплины</th>
        </tr>

        <c:forEach items="${disciplines}" var="d">
            <tr>
                <td>${d.discipline}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="stud-list-page">
        <ul class="students-list">
            <c:if test="${role == 1}">
                <li>
                    <span>
                        <form action="/term-create" method="get">
                            <input type="submit" value="Создать семестр">
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="/terms" method="post">
                              <input type="hidden" name="idTerm" value="${selectedTerm.id}">
                        <input type="submit" value="Удалить выбранный семестр">
                        </form>
                    </span>
                </li>
            </c:if>
        </ul>
    </div>

</div>
</body>
</html>