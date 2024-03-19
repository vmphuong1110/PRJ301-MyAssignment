<%-- 
    Document   : att
    Created on : Mar 4, 2024, 10:23:26 PM
    Author     : PHUONG
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                border: 1px solid #ccc;
                width: 190px;
                padding: 8px;
                text-align: left;
            }

            th {
                border-right: 1px solid #fff;
                width: 100px;
                padding: 2px;
                height: 23px;
                background-color: coral;
                font-weight: normal;
                text-transform: uppercase;
            }

            .text-color1 {
                color: #FF3300;
            }

            .text-color2 {
                color: #008000;
            }

            .save-button {
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                font-weight: bold;
                text-transform: uppercase;
                transition: background-color 0.3s ease;
                margin-top: 30px;
            }

            .save-button:hover {
                background-color: #45a049;
            }

            input[type="text"] {
                padding: 5px;
                width: 95%;
            }
        </style>
    </head>
    <body>
        <div>
            <form action="att" method="POST">
                <input type="hidden" name="id" value="${param.id}" />
                <table border="1px">
                  
                        <tr>
                            <th>No</th>
                            <th>Code</th>
                            <th>Image</th>
                            <th>Students Name</th>
                            <th>Status</th>
                            <th>Comment</th>
                            <th>Record Time</th>
                        </tr>
                  
                    <c:forEach items="${requestScope.atts}" var="a">
                        <tr>
                            <td>${a.student.id}</td>
                            <td>${a.student.code}</td>
                            <td style="text-align: center;">
                                <img src="${a.student.image}" alt="Student Image" style="max-width: 150px; height: 150px; display: block; margin: 0 auto;">
                            </td>
                            <td>${a.student.name}</td>
                            <td>
                                <input type="radio" 
                                       <c:if test="${!a.present}">
                                           checked="checked"
                                       </c:if>
                                       name="present${a.student.id}" value="no"/><span class="text-color1">Absent</span>

                                <input type="radio" 
                                       <c:if test="${a.present}">
                                           checked="checked"
                                       </c:if>
                                       name="present${a.student.id}" value="yes"/><span class="text-color2">Present</span>
                            </td>
                            <td>
                                <input type="text" name="description${a.student.id}" value="${a.description}"/>
                            </td>
                            <td>${a.time}</td>
                        </tr>    
                    </c:forEach>
                </table>
                <input type="submit" value="Save" class="save-button"/>
            </form>
        </div>
    </body>
</html>
