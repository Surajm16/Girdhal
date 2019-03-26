<%-- 
    Document   : cloginAuthenticate
    Created on : Mar 24, 2019, 6:49:45 PM
    Author     : Suraj
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <c:if test="${empty param.mail or empty param.pass}">
            <c:redirect url="clogin.jsp">
                <c:param name="errMsg" value="Please Enter Username and Password"/>
            </c:redirect>
        </c:if> 
        <c:if test="${not empty param.mail and not empty param.pass}">
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://localhost:3306/girdhal"
                             user="root" password=""/>
            <s:query dataSource="${ds}" var="selectQ">
                select count(*) as kount from newuser
                where mail='${param.mail}'
                and pass1='${param.pass}'
            </s:query>
            <c:forEach items="${selectQ.rows}" var="r">
                <c:choose>
                    <c:when test="${r.kount gt 0}">
                        <c:set scope="session"
                               var="loginUser"
                               value="${param.mail}"/>
                        <c:redirect url="index.html"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="clogin.jsp">
                            <c:param name="errMsg" value="Username/Password does not match"/>
                        </c:redirect>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:if>
    </body>
</html>