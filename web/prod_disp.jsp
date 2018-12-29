<!DOCTYPE html>
<html>
<head>
	<title>List of Products sold</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<style type="text/css">
		.row:hover
		{
			padding:2em;
  			-webkit-box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);
			-moz-box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);
			box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);
			transition:0.5s;
		}
		.row
		{
			margin:2em;
			background-color:black;
			border-radius:5px;
		}
		.center
		{
 			margin: 0;
  			position: absolute;
  			top: 50%;
  			left: 50%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
  			padding:2em;
  			vertical-align:middle;
		}
		*
		{
			text-align:center;
		}
		body
		{
			background:url('https://images.unsplash.com/photo-1523380456970-5a4bcf7a4381?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80');
			background-position:center;
			background-repeat: no-repeat;
			background-attachment:fixed;
			background-size:cover;
		}
	</style>
</head>
<body>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.Connection"%>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
     %>
                
	<div class="container-fluid">
		<br>
		<br>
		<div class="jumbotron">
			<h1 style="text-align:left;">PRODUCT LIST</h1>
                        <p style="text-align:left;">Due to company policies you can only buy one at a time by default</p>
		</div>
	</div>
	<div class="container">
		<br>
		<br>
		<div class="row" style="vertical-align:center;margin:auto;">
			<a href="prod1.jsp">
				<div class="col-lg-4" >
                                    <h1 style="margin-top:3em;">
                                        <%
                                        PreparedStatement ps = conn.prepareStatement("select * from prods where id='P001'");
                                        ResultSet rs = ps.executeQuery();
                                        while(rs.next())
                                        {
                                            out.println(rs.getString("prod_name"));
                                        }
                                        %>
                                    </h1>
				</div>
				<div class="col-lg-4" style="border-left:2px solid grey;border-right:2px solid grey;margin-top:2em;">
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
					</p>
				</div>
				<div class="col-lg-4" style="text-align:center;">
					<img src="https://images.unsplash.com/photo-1545562006-90f5b75a9a3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80" width="auto" height="300">
				</div>
			</a>
		</div>
		<br>
		<br>
		<div class="row" style="vertical-align:center;margin:auto;">
			<a href="prod2.jsp">
				<div class="col-lg-4" style="margin:auto;vertical-align:middle;">
					<h1 style="margin-top:3em;">
                                        <%
                                        ps = conn.prepareStatement("select * from prods where id='P002'");
                                        rs = ps.executeQuery();
                                        while(rs.next())
                                        {
                                            out.println(rs.getString("prod_name"));
                                        }
                                        %>
                                        </h1>
				</div>
				<div class="col-lg-4" style="border-left:2px solid grey;border-right:2px solid grey;">
                                    <p style="margin-top:2em;">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
					</p>
				</div>
				<div class="col-lg-4" style="text-align:center;">
					<img src="https://images.unsplash.com/photo-1545707749-234638daef99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" width="auto" height="300">
				</div>
			</a>
		</div>
		<br>
		<br>
		<div class="row" style="vertical-align:center;margin:auto;">
			<a href="prod3.jsp">
				<div class="col-lg-4" style="margin:auto;vertical-align:middle;">
					<h1 style="margin-top:3em;">
                                        <%
                                        ps = conn.prepareStatement("select * from prods where id='P003'");
                                        rs = ps.executeQuery();
                                        while(rs.next())
                                        {
                                            out.println(rs.getString("prod_name"));
                                        }
                                        %>
                                        </h1>
				</div>
				<div class="col-lg-4" style="border-left:2px solid grey;border-right:2px solid grey;">
					<p style="margin-top:2em;">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
					</p>
				</div>
				<div class="col-lg-4" style="text-align:center;">
					<img src="https://images.unsplash.com/photo-1545702890-8c97d8038a6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" width="auto" height="300">
				</div>
			</a>
		</div>
		<br>
		<br>
		<div class="row" style="vertical-align:center;margin:auto;">
			<a href="prod4.jsp">
				<div class="col-lg-4" style="margin:auto;vertical-align:middle;">
					<h1 style="margin-top:3em;">
                                        <%
                                        ps = conn.prepareStatement("select * from prods where id='P004'");
                                        rs = ps.executeQuery();
                                        while(rs.next())
                                        {
                                            out.println(rs.getString("prod_name"));
                                        }
                                        %>
                                        </h1>
				</div>
				<div class="col-lg-4" style="border-left:2px solid grey;border-right:2px solid grey;">
                                    <p style="margin-top:2em;">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
					</p>
				</div>
				<div class="col-lg-4" style="text-align:center;">
					<img src="https://images.unsplash.com/photo-1545696596-6a8efcc01035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80" width="auto" height="300">
				</div>
			</a>
		</div>
		<br>
		<br>
	</div>
	<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>