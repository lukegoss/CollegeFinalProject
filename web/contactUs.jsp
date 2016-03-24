<%-- 
    Document   : contactUs
    Created on : 13-Feb-2015, 09:36:50
    Author     : d00135791
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.text" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><label for="contactUs"><fmt:message key="gamehub.label.contactUs" /></label></title>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <meta name="viewpoint" content="width=device-width, initial-scale=1.0">

    </head>
    <body class="body">
        <jsp:include page="nav.jsp" />
        <div class="mainContent">
            <div class="content">
                <article class="topcontent">
                    <header>
                        <h2><a title="Contact Us"><label for="contactUs"><fmt:message key="gamehub.label.contactUs" /></label></a></h2>
                    </header>
                    <content>

                        <form id="contacts-form" action="">
                            <fieldset>
                                <div class="field"><label for="yourName"><fmt:message key="gamehub.label.yourName" /></label><input type="text" value=""/></div>
                                <div class="field"><label for="yourEmail"><fmt:message key="gamehub.label.yourEmail" /></label><input type="text" value=""/></div>
                                <div class="field"><label for="yourMessage"><fmt:message key="gamehub.label.yourMessage" /></label><textarea cols="1" rows="1"></textarea></div>
                                <div class="alignright"><a onclick="document.getElementById('contacts-form').submit()"><label for="sendMessage"><fmt:message key="gamehub.label.sendMessage" /></label><b></b></a></div>
                            </fieldset>
                        </form>
                    </content>
                </article>
            </div>
        </div>

        <aside class="top-sidebar">
            <jsp:include page="topSidebarNav.jsp" />
        </aside>
        <aside class="middle-sidebar">
            <jsp:include page="adminSidebar.jsp" />
        </aside>
        <footer class="mainFooter">
            <p>Copyright &copy; 2015</p>
        </footer>

    </body>
</html>
