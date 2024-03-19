<%-- 
    Document   : useNumberList
    Created on : Mar 13, 2024, 4:31:51 PM
    Author     : PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="m" uri="/WEB-INF/tlds/firsttagcustom" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags/" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <m:NumberListTag color="green" rows="10" />
        <mytag:welcome name="MPhuong"/>
    </body>
</html>
