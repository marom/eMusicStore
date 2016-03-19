<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: maro
  Date: 19/03/16
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected product in your shopping bag.</p>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <div>
                    <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
                </div>

                <div class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td>fake product</td>
                        <td>fake unit price</td>
                        <td>fake quantity</td>
                        <td>fake price</td>
                        <td>Remove button</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Grand total:</td>
                        <td>fake 456.67</td>
                        <td></td>
                    </tr>
                </div>
            </div>

            <a href="<spring:url value="/productList" /> ">Continue Shopping</a>
        </section>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>