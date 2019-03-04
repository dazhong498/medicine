<%@ page import="pojo.Medicine" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="static java.lang.System.out" %>
<%@ page import="static java.lang.System.setOut" %><%--
  Created by IntelliJ IDEA.
  User: david
  Date: 2019/2/21
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </head>
    <body>


        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="./home.jsp">Home</a>
                    <a class="nav-item nav-link active" href="./login">Login</a>
                    <a class="nav-item nav-link active" href="./register">Register</a>
                    <a class="nav-item nav-link active" href="./getProducts">Products</a>
                </div>
            </div>

            <div class = "form-inline my-2 my-lg-0">
                <a href="./logout"><button type="button" class="btn btn-link">${sessionScope.user.getUserName()}</button></a>
                <a href="./checkOutControl"><button type="button" class="btn btn-link">Check Out</button></a>
            </div>
        </nav>

        <section class="jumbotron text-center">
            <div class="container">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">${sessionScope.currentMed.getName()}</h5>
                        <p class="card-text">${sessionScope.currentMed.getDetail()}</p>
                        <div>${sessionScope.currentMed.getPrice()}</div>
                        <div>${sessionScope.currentMed.getMadeBy()}</div>
                        <form action="./addCartSession" method="post" >
                            <input type="hidden" name="medId" value="${sessionScope.currentMed.getId()}"/>
                            <button type="submit" class="btn btn-sm btn-outline-secondary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
