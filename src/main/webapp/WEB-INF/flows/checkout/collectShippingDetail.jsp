<%--
  Created by IntelliJ IDEA.
  User: maro
  Date: 24/03/16
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>
            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

  
        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street name</label> <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartment">Apartment number</label> <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartment" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label> <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState">State</label> <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label> <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZipCode">ZipCode</label> <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZipCode" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back </button>
        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Cancel </button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
