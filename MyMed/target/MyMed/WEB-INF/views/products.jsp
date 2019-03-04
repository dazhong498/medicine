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
    <script>
        function callFunction() {
            printId();
        }

    </script>

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
                <h1 class="jumbotron-heading">Products Example</h1>
                <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
                <p>
                    <a href="#" class="btn btn-primary my-2">Main call to action</a>
                    <a href="#" class="btn btn-secondary my-2">Secondary action</a>
                </p>
            </div>
        </section>


        <%--<%--%>
            <%--Cookie item = new Cookie("item", request.getParameter("first_name"));--%>
            <%--Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));--%>

            <%--// Set expiry date after 24 Hrs for both the cookies.--%>
<%--//            firstName.setMaxAge(60*60*24);--%>
<%--//            lastName.setMaxAge(60*60*24);--%>
<%--//--%>
<%--//            // Add both the cookies in the response header.--%>
<%--//            response.addCookie( firstName );--%>
<%--//            response.addCookie( lastName );--%>
        <%--%>--%>

        <%!
            void printId(){
                out.println("print Id function");
            }
        %>

        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">

                        <%
                            HttpSession session1 = request.getSession();
                            List<Medicine> medicines = (List<Medicine>)session1.getAttribute("medicine");
//                            System.out.println(meds);
//                            System.out.println("----------------------------");
//                            List<Medicine> medicines = (List<Medicine>)request.getAttribute("products");
                            for(Medicine med: medicines){ %>
                        <div class="card mb-4 box-shadow">
                            <div class="card-body">
                                <h5 class="card-title"><%= med.getName()%></h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><%= med.getPrice()%></p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <form action="./addCartSession" method="post" >
                                            <input type="hidden" name="medId" value="<%= med.getId() %>"/>
                                            <button type="submit" class="btn btn-sm btn-outline-secondary">Add to Cart</button>
                                        </form>
                                        <form action="./viewProductDetail" method="post" >
                                            <input type="hidden" name="medId" value="<%= med.getId() %>"/>
                                            <button type="submit" class="btn btn-sm btn-outline-secondary">View Detail</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <%}%>
                    </div>
                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-md-4">--%>
                        <%--<div class="card mb-4 box-shadow">--%>
                            <%--<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">--%>
                            <%--<div class="card-body">--%>
                                <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>
                                <%--<div class="d-flex justify-content-between align-items-center">--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                        <%--<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--</div>--%>
                                    <%--<small class="text-muted">9 mins</small>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>
        </div>


        <%--<div class="container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-10">--%>
                    <%--<%List<Medicine> medicines = (ArrayList<Medicine>)request.getAttribute("products");--%>
                        <%--for(Medicine med: medicines){ %>--%>
                    <%--<div class="card" style="width: 18rem;">--%>
                        <%--<div class="card-body">--%>
                            <%--<h5 class="card-title"><%= med.getName()%></h5>--%>
                            <%--<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>--%>
                            <%--<p class="card-text"><%= med.getPrice()%></p>--%>
                            <%--<a href="./addToCart" class="card-link">Add to Cart</a>--%>
                            <%--<a href="#" class="card-link">View Detail</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<%}%>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    </body>
</html>
