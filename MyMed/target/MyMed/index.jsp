<%--
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
    </div>
</nav>


<div class="container">
    <div class="row">
        <div class="col-md-10">

            <form action = "./registerUser" method = "post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="userName">User Name</label>
                                <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter User Name">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="email">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
                            </div>
                        </div>
                        <div class="col-md-5 offset-md-5">
                            <div class="form-group">
                                <label for="userName">Confirm Password</label>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Enter Confirm Password">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-1">

                        </div>
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="phoneNumber">Phoen</label>
                                <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Enter Phone Number">
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

</div>
</body>
</html>
