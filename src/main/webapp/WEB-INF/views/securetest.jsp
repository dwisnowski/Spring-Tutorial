<%@ page language="java" contentType="text/html; charset=US-ASCII"
                pageEncoding="US-ASCII" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang="en">
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>Hello Security</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        <%--<c:url var="faviconUrl" value="/resources/img/favicon.ico"/>--%>
        <%--<link rel="icon" type="image/x-icon" href="${faviconUrl}"/>--%>
        <%--<c:url var="bootstrapUrl" value="/resources/css/bootstrap.css"/>--%>
        <%--<link href="${bootstrapUrl}" rel="stylesheet"></link>--%>
        <%--<c:url var="bootstrapResponsiveUrl" value="/resources/css/bootstrap-responsive.css"/>--%>
        <%--<link href="${bootstrapResponsiveUrl}" rel="stylesheet"></link>--%>


        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
    </head>

    <body>
    <div class="container">
        <c:if test="${request.remoteUser ne null }">
            <h1>This is secured!</h1>
        </c:if>
        <p>
            Hello <b><c:out value="${request.remoteUser}"></c:out></b>
        </p>


        <%--<c:url var="logoutUrl" value="/logout"/>--%>

        <%--<form class="form-inline" action="${logoutUrl}" method="post">--%>
            <%--<input type="submit" value="Log out"/>--%>
            <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
        <%--</form>--%>
    </div>
    </body>
</html>