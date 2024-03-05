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
                width: 100%;
                border-collapse: collapse;
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
        </style>
    </head>
    <body>

        <form action="timetable" method="GET">
            <input type="hidden" value="${param.id}" name="id"/>
            From: <input type="date" name="from" value="${requestScope.from}"/> -
            <input type="date" name="to" value="${requestScope.to}"/>
            <input type="submit" value="View"/>
        </form>
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
                                    <a href="att?id=${les.id}">Take</a><br/> 
                                    <c:if test="${les.isAttended}">
                                        <span class="attended">(Attended)</span>
                                    </c:if>
                                    <c:if test="${!les.isAttended}">
                                        <span class="not-attended">(Not yet)</span>
                                    </c:if>
                                    <br/> 
                                    <p class="time">(${slot.time})</p>
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
