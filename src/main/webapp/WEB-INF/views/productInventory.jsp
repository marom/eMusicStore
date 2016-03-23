<%--
  Created by IntelliJ IDEA.
  User: maro
  Date: 17/03/16
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Products inventory page</h1>
            <p class="lead">This is a product inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo here</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width: 100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} PLN</td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/product/addProduct" /> " class="btn btn-primary" >Add Product</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>

