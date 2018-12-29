<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
    PreparedStatement ps = conn.prepareStatement("select * from session where code=1;");
    ResultSet rs = ps.executeQuery();
    while(rs.next())
    {
        out.println("Inside While loop");
        String curr_email = rs.getString("email");
        out.println(curr_email);
        PreparedStatement ps1  = conn.prepareStatement("insert into sales values (?,?,1);");
        ps1.setString(1,curr_email);
        String tid = request.getParameter("prodid");
        ps1.setString(2,tid);
        ps1.executeUpdate();
        request.setAttribute("isLoggedIn","true");
        String sql = "select * from user_data where email='" + curr_email + "'";
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        while(rs.next())
        {
            request.setAttribute("fname",rs.getString("fname"));
            request.setAttribute("lname",rs.getString("lname"));
            request.setAttribute("email",rs.getString("email"));
            request.setAttribute("age",rs.getInt("age"));
            request.setAttribute("gender",rs.getString("gen"));
        }
        RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
        rd.forward(request,response);
    }
    out.println("Continue after loggin in");
    RequestDispatcher rd = request.getRequestDispatcher("signin.html");
    rd.forward(request, response);
    
%>