<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/css/styles.css">
</head>
<body>
<h2>Система управления студентами и их успеваемостью</h2>
<input type="submit" value="Посмотреть успеваемость выбранных студентов">
<form action="create-student.jsp" method="get">
<input type="submit" value="Создать студента">
</form>
<input type="submit" value="Модифицировать выбраного студента">
<input type="submit" value="Удалить выбранных студентов">
<h3>Список студентов</h3>
<table>
    <tr>
        <th></th>
        <th> Фамилия</th>
        <th> Имя</th>
        <th> Группа</th>
        <th> Дата поступления</th>
    </tr>
    <c:forEach items="${students}" var="st" >
    <tr>
        <td><input type="checkbox" value="${st.id}"></td>
        <td>${st.surname}</td>
        <td>${st.name}</td>
        <td>${st.group}</td>
        <td>${st.date}</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
