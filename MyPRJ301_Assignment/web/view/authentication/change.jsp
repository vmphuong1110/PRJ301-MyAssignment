<%-- 
    Document   : change
    Created on : Mar 14, 2024, 11:44:06 PM
    Author     : PHUONG
--%>

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
                box-shadow: rgba(3, 102, 214, 0.3) 0px 0px 0px 3px;
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
            }
            input[type="text"],
            input[type="password"],
            input[type="submit"],
            input[type="checkbox"] {
                width: calc(100% - 22px);
                padding: 16px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-sizing: border-box;
                font-size: 18px;
            }
            input[type="submit"] {
                background-color: royalblue;
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

        </style>
    </head>
    <body>
        <form action="change" method="post" >
            <h2>Change Password</h2>
            <label for="username">Enter Your Username:</label>
            <input type="text" name="username">
            <label for="password">New Password:</label>
            <input type="password" name="password">
            <label for="password">Confirm Password:</label>
            <input type="password" name="rpassword">
            <input type="submit" value="Change">
        </form>
    <c:if test="${not empty mess}">
        <p>${mess}</p>
    </c:if>

    <p><a href="login">Go back</a></p>
</body>
</html>
