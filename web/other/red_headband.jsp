<%@ page import="com.ttre16.jordan.logic.Customer" %><%--
  Created by IntelliJ IDEA.
  User: ttre16
  Date: 12/27/19
  Time: 12:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Headband</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<header id="header">
    <div class="container d-flex justify-content-between align-items-center">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/index.jsp">
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="logo">
            </a>
        </div>
        <nav class="header-nav">
            <form action="security" method="get">
                <a href="${pageContext.request.contextPath}/index.jsp">Главная</a>
                <a href="${pageContext.request.contextPath}/head/us.jsp">О нас</a>
                <a href="${pageContext.request.contextPath}/head/cart.jsp">Корзина</a>
                <%
                    Customer customer = (Customer) session.getAttribute("customer");
                    if(customer!=null && customer.isLogin())
                        out.print("<a href=\"/index.jsp\">" + customer.getName() + "</a>\n" +
                                "<button type=\"submit\" name=\"status\" value=\"logOut\">Выход</button>");
                    else
                        out.print("<a href=\"/head/login.jsp\">Вход</a>\n" +
                                "<a href=\"/head/registration.jsp\">Регистрация</a>");
                %>
            </form>
        </nav>
    </div>
</header>
<main id="main">
    <div class="clothes-page">
        <h1>Jordan Dri-FIT Jumpman Headband Red</h1>
        <div id="left">
            <img src="${pageContext.request.contextPath}/img/red_headband.png" alt="red_headband">
        </div>
        <div id="right">
            <p>10$</p>
            <ul>
                <li>
                    <strong>Style Code:</strong>
                    J0003600-639
                </li>
                <li>
                    <strong>Fabric:</strong>
                    96% nylon 4% rubber
                </li>
                <li>
                    <strong>Shown:</strong>
                    Red/White/Black
                </li>
                <li>
                    <strong>Collection:</strong>
                    Jordan Brand
                </li>
            </ul>
            <form action="jordan" method="post">
                <% session.setAttribute("add", true);%>
                <input type="hidden" name="name" value="red_headband">
                <input type="submit" class="button-login button-login-default" value="Добавить в корзину">
            </form>
        </div>
    </div>
</main>
</body>
</html>