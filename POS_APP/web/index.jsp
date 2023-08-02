<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta content="width=device-width initial-scale=1" name="viewport">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!--    <link href="assets/css/styles.css" rel="stylesheet">-->

    <style>
        ul > li {
            cursor: pointer;
        }
    </style>
</head>
<body>
<!--header-->
<header id="headerSection">
    <nav class="navbar navbar-expand-lg" style="background: #d60f0f;">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold text-dark" href="#">
                <img src="assets/img/cart%20logo.png" alt="Bootstrap" width="40" height="40"> POS System
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" id="lnkHome" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" id="lnkCustomer" class="text-white" href="http://localhost:8081/POS_APP_Web_exploded/pages/customer">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" id="itemBtn" href="pages/Store.jsp">Store</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" id="placeOrderBtn" href="pages/PlaceOrder.jsp">Order</a>
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

<!--dashboard content-->
<section class="container" id="dashBoardSection">

    <h1 class="p-5"> Welcome to POS System</h1>

    <!-- card selector menu -->
    <div class="row g-5">

        <!-- card 1 -->
        <div class="col-12 col-lg-4 d-flex justify-content-center mb-3">
            <div class="card" style="width: 18rem;">
                <img src="assets/img/Cust.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Manage Customers</h5>
                    <p class="card-text">Options for handling customer details</p>
                    <a href="index.jsp#http://localhost:63342/MyPortfolio/Assignment/JS/InMemory-POS/index.html?_ijt=dpoo81d3b6or8i443dce3r2sh#customerSection" class="btn btn-primary">Click Here</a>
                </div>
            </div>
        </div>

        <!-- card 2-->
        <div class="col-12 col-lg-4 d-flex justify-content-center mb-3">
            <div class="card" style="width: 18rem;">
                <img src="assets/img/Store.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Manage Items</h5>
                    <p class="card-text">Options for manage the store details</p>
                    <a href="index.jsp#http://localhost:63342/MyPortfolio/Assignment/JS/InMemory-POS/index.html?_ijt=dpoo81d3b6or8i443dce3r2sh&#storeSection" class="btn btn-primary">Click Here</a>
                </div>
            </div>
        </div>

        <!-- card 3 -->
        <div class="col-12 col-lg-4 d-flex justify-content-center mb-3">
            <div class="card" style="width: 18rem;">
                <img src="assets/img/Cart.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Purchase Order</h5>
                    <p class="card-text">Option for Place Order and Make Payment</p>
                    <a href="index.jsp#http://localhost:63342/MyPortfolio/Assignment/JS/InMemory-POS/index.html?_ijt=dpoo81d3b6or8i443dce3r2sh#placeOrderSection" class="btn btn-primary">Click Here</a>
                </div>
            </div>
        </div>

    </div>
</section>

<script src="assets/js/jquery-3.6.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
