<%-- 
    Document   : change
    Created on : Mar 14, 2024, 11:44:06 PM
    Author     : PHUONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: white;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            form {
                width: 400px;
                background-color: #fff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: rgba(0, 0, 0, 0.12) 0px 1px 3px, rgba(0, 0, 0, 0.24) 0px 1px 2px;
            }
            h2 {
                text-align: center;
                margin-bottom: 30px;
                color: black;
                font-size: 30px;
            }
            label {
                display: block;
                margin-bottom: 8px;
                font-size: 18px;
                margin-left: 10px;

            }
            input[type="text"],
            input[type="password"],
            input[type="submit"],
            input[type="checkbox"] {
                width: calc(100% - 22px);
                padding: 16px;
                margin-left: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-sizing: border-box;
                font-size: 18px;
            }
            input[type="submit"] {
                background-color: #45a049;
                color: white;
                border: none;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
            input[type="checkbox"] {
                width: auto;
                margin-top: 8px;
            }
            .error-message {
                color: red;
                text-align: center;
                text-transform: uppercase;
                
            }
            a.button {
                display: inline-block;
                padding: 10px 20px;
                background-color: #6b90da;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                transition: background-color 0.3s;
                margin-left: 10px;
            }

            /* Hover effect */
            a.button:hover {
                background-color: #6b90da;
            }
        </style>
    </head>
    <body>
        <form action="change" method="post" >
            <h2>Change Password</h2>
            <p class="error-message">${mess}</p>
            <label for="username">Old Password:</label>
            <input type="password" name="password">
            <input type="hidden" name="username" value="${sessionScope.account.username}">
            <label for="password">New Password:</label>
            <input type="password" name="newpassword">
            <label for="password">Confirm Password:</label>
            <input type="password" name="rnewpassword">
            <input type="submit" value="Change">
            <p>
                <a href="home" class="button">Go back</a>
            </p>
        </form>
    </body>
</html>
