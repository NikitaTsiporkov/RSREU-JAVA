<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sun.org.apache.xerces.internal.xs.StringList" %><%--
  Created by IntelliJ IDEA.
  User: Администратор
  Date: 30.11.2018
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
    <title>Homepage</title>
</head>
<body>
<p>Hello, <c:out value="${name}"/></p>
<p>Users that was login in this session:</p>
<ul>
    <c:forEach var="name" items="${names}">
        <li><c:out value="${name}" /></li>
    </c:forEach>
</ul>
<a href="/authorization"><b>logout</b></a>
</body>
</html>
