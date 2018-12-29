<!DOCTYPE html>
<html>
<head>
	<title>PRODUCT NAME</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <style type="text/css">
            body
            {
                background:url('https://images.unsplash.com/photo-1545707749-234638daef99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80');
                background-size:cover;
                background-repeat:no-repeat;
                background-position:center;
            }
            #back
            {
                background:rgba(0,0,0,0.6);
                position:relative;
            }
            *
            {
                color:white;
            }
        </style>
</head>
<body>
    <div id="back"> 
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.Connection"%>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
     %>
	<div class="container">
		<br>
		<div class="jumbotron">
                    <h3 style="color:black;">
                        <%
                            PreparedStatement ps = conn.prepareStatement("select * from prods where id='P002'");
                            ResultSet rs = ps.executeQuery();
                            while(rs.next())
                            {
                                out.println(rs.getString("prod_name"));
                            }
                        %>
                    </h3>
		</div>
		<div class="row">
			<div class="col-lg-4"><p>
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras scelerisque erat et ultrices porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque blandit, mauris eu ultrices volutpat, est sapien condimentum odio, at lacinia erat lectus vel nibh. Maecenas vel laoreet neque, ac viverra purus. Quisque iaculis justo sit amet rutrum pharetra. Ut mi magna, scelerisque pharetra mi a, aliquet malesuada nisl. Pellentesque vitae faucibus neque. Aliquam fermentum blandit pharetra. Nulla facilisi. Duis a justo efficitur, congue nisi ut, finibus enim. Aliquam mi tellus, eleifend ut dolor eget, pretium auctor ante. Suspendisse rhoncus tempor ullamcorper. Mauris leo diam, auctor eu tellus id, bibendum vehicula massa. Aliquam vitae purus vehicula, mattis urna non, facilisis nisl. Vivamus sit amet tellus gravida, scelerisque diam a, semper eros.

			Nullam fermentum lobortis orci non placerat. Vestibulum ornare turpis eu magna aliquet, et rutrum dui cursus. Nulla ornare malesuada aliquet. Fusce at imperdiet ante. Cras bibendum ultrices mauris at porttitor. In aliquam vitae elit eget consectetur. Proin interdum ex in eros dapibus, vel vulputate lorem vehicula.
			</p></div>
			<div class="col-lg-4" style="vertical-align:right;font-size:24px;padding:2em;"><p>MRP : </p>
                            <h4 style="text-decoration:line-through;">
                                <%
                                    ps = conn.prepareStatement("select * from prods where id='P002'");
                                    rs = ps.executeQuery();
                                    while(rs.next())
                                    {
                                        out.println(rs.getString("pri"));
                                    }
                                %>
                            </h4>
                            <p>SureVac Price :</p>
                            <h3>
                                <%
                                    ps = conn.prepareStatement("select * from prods where id='P002'");
                                    rs = ps.executeQuery();
                                    while(rs.next())
                                    {
                                        out.println(rs.getString("dis_pri"));
                                    }
                                %>
                            </h3>
                            <p>You Save :</p>
                            <h4>
                            <%
                                    ps = conn.prepareStatement("select * from prods where id='P002'");
                                    rs = ps.executeQuery();
                                    while(rs.next())
                                    {
                                        out.println(Integer.parseInt(rs.getString("pri"))- Integer.parseInt(rs.getString("dis_pri")));
                                    }
                                %>
                            </h4>
                        </div>
			<div class="col-lg-4"><img src="https://images.unsplash.com/photo-1545707749-234638daef99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" width="100%"><br><br>
                            <form method="post" action="savesale.jsp"><input type="text" name="prodid" style="text-align:center;width:100%;color:black;" value="P002" readonly/><br><br><button class="btn btn-info" style="width:100%;">Buy</button></form>
                        </div>
			</div>
	</div>
	<br>
	<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</div>
</body>
</html>