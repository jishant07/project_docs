<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String s = request.getAttribute("isLoggedIn").toString();
    if(s != "true")
    {
        RequestDispatcher rd = request.getRequestDispatcher("signin.html");
        rd.forward(request,response);
    }
    request.setAttribute("isLoggedIn","false");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <style type="text/css"> 
            .center
            {
                text-align:left;
                margin:auto;
                border-radius:5px;
                -webkit-box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);
		-moz-box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);
		box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);
            }
         </style>
        <title>Success Page!</title>
    </head>
    <body>
    <nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#ABC" aria-expanded="false">
	        	<span class="sr-only">Toggle navigation</span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	      		</button>
				<a href="#" class="navbar-brand">SV</a>
			</div>	
			 <div class="collapse navbar-collapse" id="ABC">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">About</a></li>	
				</ul>
			
				<ul class="nav navbar-nav navbar-right">
					<li><a><% out.println(request.getAttribute("email")); %></a></li>
                                        <li><a href="init.jsp">LogOut</a></li>
				</ul>
			</div>
			</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h2 style="text-align:center;margin:auto;">Basic Account Credentials</h2>
		</div>
		<div class="row" style="text-align:center;margin:auto;">
			<div class="col-lg-6">
				<h4>First Name</h4> <h5><% out.println(request.getAttribute("fname")); %></h5>
				<h4>Last Name</h4> <h5><% out.println(request.getAttribute("lname")); %></h5>
			</div>
			<div class="col-lg-6">
				<h4>Gender </h4> <h5><% out.println(request.getAttribute("gender")); %></h5>
				<h4>Age</h4> <h5><% out.println(request.getAttribute("age")); %></h5>
			</div>
		</div>
	</div>
                        <br>
                        <br>
                        
         <div class="container">
             <button class="btn btn-default" style="text-align:center;"><a href="prod_disp.jsp">Go to Product list</a></button>
             <h1 style="text-align:left;">The Shopped Items :</h1>
             <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
                String sql = "select * from sales where email='" + request.getAttribute("email") + "'";
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
             %>
             
             <br>
		<div class="row">
		<div class="col-lg-6">
                    <p>Name of the product :</p>
                <h4>
                <%
                sql = "select * from prods where id='" + rs.getString("prodid") + "'";
                ps = conn.prepareStatement(sql);
                ResultSet rs1 = ps.executeQuery(); 
                while(rs1.next())
                {
                    out.println(rs1.getString("prod_name"));
                 }
                %>
                </h4>
                </div>
		</div>
		<br>
                <% }%>
                        <br>
                        <br>
                
    </body>
    	 <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>