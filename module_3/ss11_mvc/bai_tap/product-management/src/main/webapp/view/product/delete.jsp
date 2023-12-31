<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 10/31/23
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post" action="/product?action=delete">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <tr>
            <td>ID: </td>
            <td><input type="number" name="id" id="id" value="${product.getId()}"></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" id="name" value="${product.getName()}"></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><input type="number" name="price" id="price" value="${product.getPrice()}"></td>
        </tr>
        <tr>
            <td>Description: </td>
            <td><input type="text" name="description" id="description" value="${product.getDescription()}"></td>
        </tr>
        <tr>
            <td>Manufacturer: </td>
            <td><input type="text" name="manufacturer" id="manufacturer" value="${product.getManufacturer()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Delete product"></td>
        </tr>
    </fieldset>
</form>
</body>
</html>
