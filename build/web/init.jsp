<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    request.setAttribute("isLoggedIn", false);
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
    PreparedStatement ps = conn.prepareStatement("UPDATE `session` SET `code`=0 WHERE code=1");
    ps.executeUpdate();
    RequestDispatcher rd = request.getRequestDispatcher("index.html");
    rd.forward(request, response);
%>
