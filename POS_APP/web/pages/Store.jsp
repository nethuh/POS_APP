<%--
  Created by IntelliJ IDEA.
  User: nethm
  Date: 8/2/2023
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <title>Store Manage</title>
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

<main class="justify-content-center mt-4 align-content-center" id="storeSection">
    <section class="row col-12">
        <section id="itemDisplaySection" class="col-9 mx-0 my-4">
            <section id="itemFormNameAndSearch" class="mx-4">
                <nav class="navbar bg-light  ">
                    <div class="container-fluid">
                        <a class="navbar-brand">Manage Store</a>
                        <form class="d-flex" role="search">

                            <!-- Example single danger button -->
                            <div class="btn-group mx-2">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"style="background: #d60f0f;">
                                    Code
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Code</a></li>
                                    <li><a class="dropdown-item" href="#">Name</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <input class="form-control me-2" id="itemSearchTxt" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-danger me-2" id="itemSearch-btn" type="Button">Search</button>
                        </form>
                    </div>
                </nav>
            </section>

            <section id="itemTable" class="mx-4">
                <table class="table my-4">
                    <thead class="table-dark">
                    <tr id="tableHeader">
                        <th scope="col">Code</th>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Qty On Hand</th>
                    </tr>
                    </thead>
                    <tbody id="tblItem">
                    </tbody>
                </table>
            </section>
        </section>

        <section id="inputSection" class="col-3 justify-content-center my-4 ">
            <section class="col-12 card">
                <div class="badge bg-warning text-wrap fs-5 fw-semibold p-4">
                    Input Details
                </div>

                <form id="item-form px-2" >
                    <div class="m-3">
                        <label for="txtItemCode" class="form-label">Item Code</label>
                        <input type="text" class="form-control " placeholder="I001" id="txtItemCode">
                    </div>
                    <div class="m-3">
                        <label for="txtItemName" class="form-label">Item Name</label>
                        <input type="text" class="form-control" placeholder="Sugar" id="txtItemName" >
                    </div>
                    <div class="m-3">
                        <label for="txtItemPrice" class="form-label">Item Price</label>
                        <input type="text" class="form-control" placeholder="350.00" id="txtItemPrice" >
                    </div>
                    <div class="m-3">
                        <label for="txtItemQty" class="form-label">Item Quantity on Hand</label>
                        <input type="text" class="form-control" placeholder="35000.00" id="txtItemQTY" >
                    </div>

                    <div class="m-3 justify-content-center">
                        <div style="display: inline-block" class="me-2">
                            <button id="itemSave-btn" type="button" class="btn btn-success">Save</button>
                        </div>
                        <div style="display: inline-block" class="me-2">
                            <button id="itemUpdated-btn" type="button" class="btn btn-primary">Update</button>
                        </div>
                        <div style="display: inline-block" class="me-2">
                            <button id="itemDelete-btn" type="button" class="btn btn-danger">Delete</button>
                        </div>
                        <div style="display: inline-block" class="me-2">
                            <button id="itemClear-btn" type="button" class="btn btn-warning">Clear</button>
                        </div>
                        <div style="display: inline-block">
                            <button id="itemGetAll-btn" type="button" class="btn btn-secondary">Get All</button>
                        </div>
                    </div>

                </form>
            </section>
        </section>
    </section>
</main>
</body>
</html>
