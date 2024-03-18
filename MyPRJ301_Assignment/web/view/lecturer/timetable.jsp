<%-- 
    Document   : timetable
    Created on : Mar 4, 2024, 5:33:56 PM
    Author     : PHUONG
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timetable Schedule</title>
        <style>
            table {
                width: 95%;
                margin: auto; /* Center the table */
                border-collapse: collapse;
                font-size: 12px; /* Make font size smaller */
            }

            th, td {
                border: 1px solid #ccc;
                width: 200px;
                padding: 8px;
                text-align: left;
            }

            th {
                border-right: 1px solid #fff;
                width: 100px;
                padding: 2px;
                height: 23px;
                background-color: #6b90da;
                font-weight: normal;
                text-transform: uppercase;
            }

            .attended {
                color: green;
            }

            .not-attended {
                color: red;
            }
            .time {
                display: inline-block; /* Set display property to inline-block */
                background-color: #4CAF50;
                color: white;
                padding: 5px 10px; /* Adjust padding to fit the content */
                border-radius: 5px;
                text-align: center;
                margin: 0px;
                font-size: 12px;
            }
            .form-container {
                margin: 20px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f9f9f9;
                display: inline-block;
                margin-left: 40px;
            }

            /* Style the form */
            form {
                display: flex;
                align-items: center;
            }

            /* Style the labels */
            label {
                margin-right: 10px;
            }

            /* Style the input fields */
            input[type="date"] {
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
                width: 150px;
                box-sizing: border-box; /* Ensure that padding and border are included in the width */
            }

            /* Style the submit button */
            input[type="submit"] {
                padding: 8px 20px;
                border: none;
                border-radius: 5px;
                background-color: #4CAF50;
                color: #fff;
                cursor: pointer;
                margin-left: 10px;
            }

            /* Style the submit button on hover */
            input[type="submit"]:hover {
                background-color: #4CAF50;

            }
        </style>
    </head>
    <body>

        <div class="form-container">
            <form action="timetable" method="GET">
                <input type="hidden" value="${param.id}" name="id"/>
                <label for="from">From:</label>
                <input type="date" name="from" value="${requestScope.from}"/>
                <label for="to">&nbsp;&nbsp;-</label>
                <input type="date" name="to" value="${requestScope.to}"/>
                <input type="submit" value="View"/>
            </form>
        </div>

        <table border="1px">
            <tr>
                <th></th>
                    <c:forEach items="${requestScope.dates}" var="d">
                    <th>
                        <fmt:formatDate value="${d}" pattern="E" var="formattedDate" />
                        <p>${formattedDate}</p>
                        <fmt:formatDate value="${d}" pattern="dd/MM" var="formattedDate" />
                        <p>${formattedDate}</p>
                    </th>
                </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="slot">
                <tr>
                    <td>${slot.name}</td>

                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.lessions}" var="les">
                                <c:if test="${les.date eq d and les.slot.id eq slot.id}">
                                    ${les.group.name} at ${les.room.name}
                                    <a href="att?id=${les.id}">
                                        <c:if test="${les.isAttended}">
                                            Edit
                                        </c:if>
                                        <c:if test="${!les.isAttended}">
                                            Take
                                        </c:if>
                                    </a><br/> 
                                    <c:choose>
                                        <c:when test="${les.isAttended}">
                                            <span class="attended">(Attended)</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="not-attended">(Not yet)</span><br/> 
                                            <p class="time">(${slot.time})</p>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
