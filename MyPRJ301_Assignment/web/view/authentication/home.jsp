<%-- 
    Document   : home.jsp
    Created on : Mar 18, 2024, 2:20:52 PM
    Author     : PHUONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>JSP Page</title>
        <style>
            .navbar-scroll .nav-link,
            .navbar-scroll .navbar-toggler-icon,
            .navbar-scroll .navbar-brand {
                color: #262626;
            }

            /* Color of the navbar BEFORE scroll */
            .navbar-scroll {
                background-color: #FFC017;
            }

            /* Color of the links AFTER scroll */
            .navbar-scrolled .nav-link,
            .navbar-scrolled .navbar-toggler-icon,
            .navbar-scroll .navbar-brand {
                color: #262626;
            }

            /* Color of the navbar AFTER scroll */
            .navbar-scrolled {
                background-color: #fff;
            }

            /* An optional height of the navbar AFTER scroll */
            .navbar.navbar-scroll.navbar-scrolled {
                padding-top: auto;
                padding-bottom: auto;
            }
            .navbar-brand {
                font-size: unset;
                height: 3.5rem;
            }

        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-scroll fixed-top shadow-0 border-bottom border-dark">
            <div class="container">
                <a class="navbar-brand" href="home"><i class="fas fa-arrow-left-long" style="font-size: 50px;"></i></a>
                <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                        data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <c:if test="${sessionScope.account==null}">
                            <li class="nav-item">
                                <a class="nav-link" href="login">Login</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.account!=null}">
                            <li class="nav-item">
                                <a class="nav-link" href="change">Change Password</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="lecturer/timetable?id=1">Timetable</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="d-flex align-items-center justify-content-center text-center" style="height: 1100px;">
            <p class="h3">Welcome to FPiTi</p>
        </div>
    </body>
</html>
