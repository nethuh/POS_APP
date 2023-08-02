<%--
  Created by IntelliJ IDEA.
  User: nethm
  Date: 8/2/2023
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Manage</title>
    <meta content="width=device-width initial-scale=1" name="viewport">
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <style>
        ul > li {
            cursor: pointer;
        }
    </style>
</head>
<body>

<header id="headerSection">
    <nav class="navbar navbar-expand-lg" style="background: #d60f0f;">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold text-dark" href="#">
                <img src="../assets/img/cart%20logo.png" alt="Bootstrap" width="40" height="40"> POS System
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" id="lnkHome" href="../index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" id="lnkCustomer" class="text-white" href="Customer.jsp">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" id="itemBtn" href="Store.jsp">Store</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" id="placeOrderBtn" href="PlaceOrder.jsp">Order</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <!--          <input id="customerSearchTxt" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">-->
                    <!--          <button id="Search-btn" class="btn btn-outline-light" type="Button">Search</button>-->
                </form>
            </div>
        </div>
    </nav>
</header>

<main class="row justify-content-center" id="placeOrderSection">
    <section class="row justify-content-evenly h-50">

        <!-- invoice content -->
        <section class="col-10 col-md-5 col-lg-4 p-3 mt-4 bg-white shadow-lg">
            <h3 class="text-center bg-warning p-2 text-light rounded-3 fs-4">Invoice Details</h3>
            <div class="row mt-1">
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="orderId" class="form-label">Order ID :</label>
                    <input class="form-control" id="orderId" type="text">
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="txtDate" class="form-label">Order Date :</label>
                    <input class="form-control" id="txtDate" type="date">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="custIDCMB" class="form-label">Customer ID :</label>
                    <select aria-label="Default select example" class="form-select" id="custIDCMB">
                        <option selected disabled>Select Customer</option>
                        <!--<option value="1">C001</option>
                        <option value="2">C002</option>
                        <option value="3">C003</option>
                        <option value="4">C004</option>-->
                    </select>
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="txtcusName" class="form-label">Name :</label>
                    <input class="form-control" disabled id="txtcusName" type="text">
                </div>
            </div>
            <div class="row mt-2 mb-2">
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="txtcusAddress" class="form-label">Address :</label>
                    <input class="form-control" disabled id="txtcusAddress" type="text">
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="txtcusSalary" class="form-label">Salary :</label>
                    <input class="form-control" disabled id="txtcusSalary" type="text">
                </div>
            </div>
        </section>

        <!-- select items content -->
        <section class="col-10 col-md-5 col-lg-4 p-3 mt-4 bg-white shadow-lg">
            <h3 class="text-center bg-warning p-2 text-light rounded-3 fs-4">Select Items</h3>
            <div class="row mt-1">
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="itemCodeCMB" class="form-label">Item Code :</label>
                    <select aria-label="Default select example" class="form-select" id="itemCodeCMB">
                        <option selected disabled>Select Item</option>
                        <!--<option value="1">I-001</option>
                        <option value="2">I-002</option>
                        <option value="3">I-003</option>
                        <option value="4">I-004</option>-->
                    </select>
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="itName" class="form-label">Item Name :</label>
                    <input class="form-control" disabled id="itName" type="text">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="itPrice" class="form-label">Unit Price :</label>
                    <input class="form-control" disabled id="itPrice" type="text">
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="itQty" class="form-label">Qty On Hand :</label>
                    <input class="form-control" disabled id="itQty" type="text">
                </div>
            </div>
            <div class="row mt-2 mb-4">
                <div class="col-12 col-md-12 col-lg-12">
                    <label for="itBuyQty" class="form-label">Ordered Quantity :</label>
                    <input class="form-control small" id="itBuyQty" type="number" role="spinbutton">
                </div>
            </div>
            <div class="container-fluid justify-content-end d-flex" style="padding: 0;">
                <button style="width: max-content; height: max-content; font-weight: bold;"
                        class="btn btn-success text-white"
                        type="button" id="btnAddToCart">Add To Cart
                    <i style="padding-left: 4px;" class="fa-solid fa-cart-arrow-down"></i>
                </button>
            </div>
        </section>

        <!--total section-->
        <section class="col-10 col-md-10 col-lg-3 p-3 mt-4 bg-white shadow-lg" style="height: fit-content;">

            <div class="row mt-1">
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="txtCash" class="form-label">Cash (LKR)</label>
                    <input class="form-control" id="txtCash" type="text">
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <label for="txtDiscount" class="form-label">Discount</label>
                    <input class="form-control" id="txtDiscount" type="text">
                </div>
            </div>
            <div class="row mt-3 mb-4">
                <div class="col-12 col-md-12 col-lg-12 h-25">
                    <label for="balance" class="form-label">Balance (LKR)</label>
                    <input class="form-control" disabled id="balance" type="text">
                </div>
            </div>

            <div class="row mt-3 mb-4">
                <div class="col-12 col-md-12 col-lg-12 h-25">
                    <label for="subtotal" class="form-label">Sub Total (LKR)</label>
                    <input class="form-control" disabled id="subtotal" type="text">
                </div>
            </div>

            <div class="row mt-3 mb-4">
                <div class="col-12 col-md-12 col-lg-12 h-25">
                    <label for="total" class="form-label">Total (LKR)</label>
                    <input class="form-control" disabled id="total" type="text">
                </div>
            </div>


            <!--<div class="row">
                <div class="col-12 col-md-12 col-lg-12">
                    <h3 class="text-start p-2 text-danger rounded-5" >Sub Total : <span class="text-center text-dark p-2" id="subtotal"> 0.00 LKR </span>
                    </h3>
                </div>
                <div class="col-12 col-md-12 col-lg-12">
                    <h3 class="text-start p-2 text-danger rounded-5" id="total">Total : <span class="text-center text-dark p-2"> 0.00 LKR </span>
                    </h3>
                </div>
            </div>-->

            <div class="container-fluid justify-content-end d-flex" style="padding: 0;">
                <button style="font-weight: bold; padding-top: 9px; padding-bottom: 9px;"
                        class="btn btn-success" type="submit" id="btnPlaceOrder">
                    Place Order
                    <i style="padding-left: 5px;" class="fa-solid fa-sack-dollar"></i>
                </button>
            </div>
        </section>

        <!--Cart Details Table-->
        <section class="d-flex flex-column h-50 col-10 col-xl-11 bg-white shadow-lg align-items-center
        pt-3 mt-4 table-bordered table-hover table-responsive">
            <h3 class="text-center bg-warning p-2 text-light rounded-3 col-12 fs-4">Order Details</h3>
            <div class="row overflow-auto h-60 col-12 col-lg-12 rounded-2 justify-content-around">
                <table class="table table-striped table-hover mb-4 table-dark" style="height: 20px;">
                    <thead class="text-white green-hd" >
                    <tr>
                        <th>Item Code</th>
                        <th>Item Name</th>
                        <th>Unit Price (LKR)</th>
                        <th>Quantity</th>
                        <th>Total Cost (LKR)</th>
                    </tr>
                    </thead>
                    <tbody id="tblCart">
                    <!--<tr>
                        <td>I-001</td>
                        <td>Rice 2kg</td>
                        <td>300.00</td>
                        <td>3</td>
                        <td>900.00</td>
                    </tr>
                    <tr>
                        <td>I-002</td>
                        <td>Soap</td>
                        <td>250.00</td>
                        <td>4</td>
                        <td>1000.00</td>
                    </tr>
                    <tr>
                        <td>I-003</td>
                        <td>Biscuits</td>
                        <td>100.00</td>
                        <td>12</td>
                        <td>1200.00</td>
                    </tr>-->
                    </tbody>
                </table>
            </div>
        </section>
    </section>
</main>

</body>
</html>
