<%-- 
    Document   : login
    Created on : Mar 4, 2024, 5:34:56 PM
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
            }
        </style>
    </head>
    <body>
        <form action="login" method="POST">
            <h2>Login</h2>
            <p class="error-message">${mess}</p>
            <label for="username">Username:</label>
            <input type="text" name="username">
            <label for="password">Password:</label>
            <input type="password" name="password">
            <input type="checkbox" name="remember" value="remember">Remember me!
            <input type="submit" value="Login">
        </form>
    </body>
</html>
