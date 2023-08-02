<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.CustomerDTO" %>
<%--
  Created by IntelliJ IDEA.
  User: nethm
  Date: 8/2/2023
  Time: 8:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Manage</title>
    <meta content="width=device-width initial-scale=1" name="viewport">
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
           integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" rel="stylesheet">

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
                        <a class="nav-link text-white" id="lnkCustomer" class="text-white" href="http://localhost:8081/POS_APP_Web_exploded/pages/customer">Customer</a>
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

<!--customer content-->
<Main class="justify-content-center mt-4 align-content-center" id="customerSection">
    <section class="row col-12">
        <section id="customerDisplaySection" class="col-9 mx-0 my-4">
            <section id="customerFormNameAndSearch" class="mx-4">
                <nav class="navbar bg-light  ">
                    <div class="container-fluid">
                        <a class="navbar-brand">Manage Customer</a>
                        <form class="d-flex" role="search">

                            <!-- Example single danger button -->
                            <div class="btn-group mx-2">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="background: #d60f0f;">
                                    ID
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">ID</a></li>
                                    <li><a class="dropdown-item" href="#">Name</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <input class="form-control me-2" id="customerSearchTxt" type="search" placeholder="Search" aria-label="Search" >
                            <button class="btn btn-outline-danger me-2" id="customerSearch-btn" type="Button">Search</button>
                        </form>
                    </div>
                </nav>
            </section>

            <section id="customerTable" class="mx-4">
                <table class="table my-4">
                    <thead class="table-dark">
                    <tr id="CustomerTableHeader">
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Salary</th>
                    </tr>
                    </thead>
                    <tbody id="tblCustomer">
                    <% ArrayList< CustomerDTO> allCustomers = (ArrayList<CustomerDTO>) request.getAttribute("keyOne");
                    if (allCustomers !=null){
                        %>
                    <%for (CustomerDTO customerDTO : allCustomers){%>
                    <tr>
                        <td><%=customerDTO.getId()%>
                        </td>
                        <td><%=customerDTO.getName()%>
                        </td>
                        <td><%=customerDTO.getAddress()%>
                        </td>
                        <td><%=customerDTO.getSalary()%>
                        </td>
                    </tr>
<%
                    }
                    }
                    %>
                    </tbody>
                </table>
            </section>
        </section>

        <section id="customerInputSection" class="col-3 justify-content-center my-4 ">
            <section class="col-12 card">
                <div class="badge bg-warning text-wrap fs-5 fw-semibold p-4">
                    Input Details
                </div>
<%--                <form method="post" action="customer">--%>
                    <div class="m-3">
                        <label for="txtCustomerID">Customer ID</label>
                        <input name="cusID" class="form-control" id="txtCustomerID" required type="text">
                        <span class="control-error" id="lblcusid"></span>
                    </div>
                    <div class="m-3">
                        <label for="txtCustomerName">Customer Name</label>
                        <input name="cusName" class="form-control" id="txtCustomerName" type="text">
                        <span class="control-error" id="lblcusname"></span>
                    </div>
                    <div class="m-3">
                        <label for="txtCustomerAddress">Customer Address</label>
                        <input name="cusAddress" class="form-control" id="txtCustomerAddress" type="text">
                        <span class="control-error" id="lblcusaddress"></span>
                    </div>
                    <div class="m-3">
                        <label for="txtCustomerSalary">Customer Salary</label>
                        <input name="cusSalary" class="form-control" id="txtCustomerSalary" type="text">
                        <span class="control-error" id="lblcussalary"></span>
                    </div>
                    <div class="m-3 justify-content-center">
                        <div style="display: inline-block" class="me-2">
                            <button formaction="customer?option=add" formmethod="post" type="submit" class="btn btn-success" id="btnCustomer">Save </button>
                        </div>
                        <div style="display: inline-block" class="me-2">
                            <button formaction="customer?option=delete" formmethod="post"class="btn btn-primary" id="btnCusDelete">Remove</button>
                        </div>
                        <div style="display: inline-block" class="me-2">
                            <button formaction="customer?option=update" formmethod="post"class="btn btn-danger" id="btnUpdate">Update</button>
                        </div>
                        <div style="display: inline-block" class="me-2">
                            <button formaction="customer?option=getAll" formmethod="post" class="btn btn-warning" id="btnGetAll">Get All</button>
                        </div>
                        <div style="display: inline-block" >
                            <button formaction="customer?option=clearAll" formmethod="post" class="btn btn-secondary" id="btn-clear1">Clear All</button>
                        </div>
                    </div>
                </form>


                </div>
                <!--        <div class="col-12 col-lg-8 mt-3">-->
                <!--            <table class="table table-bordered table-hover">-->
                <!--                <thead class="bg-danger text-white">-->
                <!--                <tr>-->
                <!--                    <th>Customer ID</th>-->
                <!--                    <th>Customer Name</th>-->
                <!--                    <th>Customer Address</th>-->
                <!--                    <th>Customer Salary</th>-->
                <!--                </tr>-->
                <!--                </thead>-->
                <!--                <tbody id="tblCustomer">-->

                <!--                </tbody>-->
                <!--            </table>-->
                <!--        </div>-->
            </section>
        </section>
    </section>

</Main>


<script src="../assets/js/jquery-3.6.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

<!--<script>-->
<!--  //select the button and add an event to it-->
<!--  document.getElementById("btnCustomer").addEventListener("click", function () {-->

<!--    //get typed values of input fields-->
<!--    let id = document.getElementById("txtCustomerID").value;-->
<!--    let name = document.getElementById("txtCustomerName").value;-->
<!--    let address = document.getElementById("txtCustomerAddress").value;-->
<!--    let salary = document.getElementById("txtCustomerSalary").value;-->

<!--    //let's print it-->
<!--    console.log(id, name, address, salary);-->

<!--    //catch the table body-->
<!--    let tBody = document.getElementById("tblCustomer");-->

<!--    // let's see how we should insert a table row using html format-->
<!--    //<tr>-->
<!--    // <td>id</td>-->
<!--    // <td>name</td>-->
<!--    // <td>address</td>-->
<!--    // <td>salary</td>-->
<!--    // </tr>-->

<!--    //ok then, let's create the above row-->
<!--    let tr = document.createElement("tr");-->

<!--    //let's create another four columns-->
<!--    let col1 = document.createElement("td");-->
<!--    let col2 = document.createElement("td");-->
<!--    let col3 = document.createElement("td");-->
<!--    let col4 = document.createElement("td");-->

<!--    //set input fields values to the above created columns-->
<!--    col1.textContent = id;-->
<!--    col2.textContent = name;-->
<!--    col3.textContent = address;-->
<!--    col4.textContent = salary;-->

<!--    //set 4 columns to the previously created row-->
<!--    tr.appendChild(col1);-->
<!--    tr.appendChild(col2);-->
<!--    tr.appendChild(col3);-->
<!--    tr.appendChild(col4);-->

<!--    //set the row to the table body-->
<!--    tBody.appendChild(tr);-->

<!--    //Work done;-->
<!--  });-->
<!--</script>-->
</body>
</html>

