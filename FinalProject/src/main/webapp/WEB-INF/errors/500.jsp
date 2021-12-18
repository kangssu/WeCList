<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="body_top">
    <section class="breadcrumb-section">
<h1>서버의 문제입니다</h1>
    </section>
</div>
<a href="javascript:history.back();">이전 페이지로..</a>
<div class="errorPage">
    <span class="errorHead">Error!</span><br/>
    <p>request_uri : <c:out value="${requestScope['javax.servlet.error.request_uri']}"/></p>
    <p>status_code : <c:out value="${requestScope['javax.servlet.error.status_code']}"/></p>
    <p>servlet_name : <c:out value="${requestScope['javax.servlet.error.servlet_name']}"/></p>
    <p>exception : <c:out value="${requestScope['javax.servlet.error.exception']}"/></p>
    <p>servlet_name : <c:out value="${requestScope['javax.servlet.error.servlet_name']}"/></p>
    <p>message : <c:out value="${requestScope['javax.servlet.error.message']}"/></p>
</div>
