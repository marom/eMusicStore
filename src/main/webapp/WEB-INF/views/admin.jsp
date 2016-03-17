<%--
  Created by IntelliJ IDEA.
  User: maro
  Date: 17/03/16
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin page</h1>
            <p class="lead">This is the administrator page!</p>
        </div>

    <h3>
        <a href="<c:url value="/admin/productInventory" /> " >Product Inventory</a>
    </h3>

    <p>Here you can view, check, modify the product inventory!</p>


 <%@include file="/WEB-INF/views/template/footer.jsp" %>
