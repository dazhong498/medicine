<%@ page import="pojo.Medicine" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <meta charset="UTF-8">
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
<h2>This is Check Out Page</h2>

<%
    Map<Medicine, Integer> map = (Map<Medicine, Integer>)session.getAttribute("cart");
//    System.out.println("in checkMap");
//    System.out.println(map);
    Iterator<Map.Entry<Medicine, Integer>> entrys = map.entrySet().iterator();
    float total = 0;
    while(entrys.hasNext()){
        Map.Entry<Medicine, Integer> entry = entrys.next();
        total += entry.getValue() * entry.getKey().getPrice();
        %>
        <%= entry.getValue() + " " + entry.getKey().getName() + "(s): $" + (entry.getValue() * entry.getKey().getPrice())%>
    <%
    }
%>

Total price is: <%= total%>

<a href="./pay"><button type="button" class="btn btn-link">Check Out</button></a>
</body>
</html>
