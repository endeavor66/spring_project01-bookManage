<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1" width="500" align="center">
        <tr>
            <th>rid</th>
            <th>name</th>
            <th>sex</th>
            <th>age</th>
            <th>phone</th>
        </tr>
        <c:forEach items="${readers}" var="reader">
            <tr>
                <td>${reader.rid}</td>
                <td>${reader.name}</td>
                <td>${reader.sex}</td>
                <td>${reader.age}</td>
                <td>${reader.phone}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
