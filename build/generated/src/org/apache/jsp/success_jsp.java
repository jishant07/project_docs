package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class success_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String s = request.getAttribute("isLoggedIn").toString();
    if(s != "true")
    {
        RequestDispatcher rd = request.getRequestDispatcher("signin.html");
        rd.forward(request,response);
    }
    request.setAttribute("isLoggedIn","false");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">\n");
      out.write("        <style type=\"text/css\"> \n");
      out.write("            .center\n");
      out.write("            {\n");
      out.write("                text-align:left;\n");
      out.write("                margin:auto;\n");
      out.write("                border-radius:5px;\n");
      out.write("                -webkit-box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);\n");
      out.write("\t\t-moz-box-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);\n");
      out.write("\t\tbox-shadow: 10px 10px 19px 0px rgba(0,0,0,0.75);\n");
      out.write("            }\n");
      out.write("         </style>\n");
      out.write("        <title>Success Page!</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <nav class=\"navbar navbar-default\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#ABC\" aria-expanded=\"false\">\n");
      out.write("\t        \t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t        \t<span class=\"icon-bar\"></span>\n");
      out.write("\t        \t<span class=\"icon-bar\"></span>\n");
      out.write("\t        \t<span class=\"icon-bar\"></span>\n");
      out.write("\t      \t\t</button>\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"navbar-brand\">SV</a>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t\t <div class=\"collapse navbar-collapse\" id=\"ABC\">\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t<li><a href=\"index.html\">Home</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"about.html\">About</a></li>\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t\t\t\t\t<li><a>");
 out.println(request.getAttribute("email")); 
      out.write("</a></li>\n");
      out.write("                                        <li><a href=\"init.jsp\">LogOut</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t</nav>\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"jumbotron\">\n");
      out.write("\t\t\t<h2 style=\"text-align:center;margin:auto;\">Basic Account Credentials</h2>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"row\" style=\"text-align:center;margin:auto;\">\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t<h4>First Name</h4> <h5>");
 out.println(request.getAttribute("fname")); 
      out.write("</h5>\n");
      out.write("\t\t\t\t<h4>Last Name</h4> <h5>");
 out.println(request.getAttribute("lname")); 
      out.write("</h5>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t<h4>Gender </h4> <h5>");
 out.println(request.getAttribute("gender")); 
      out.write("</h5>\n");
      out.write("\t\t\t\t<h4>Age</h4> <h5>");
 out.println(request.getAttribute("age")); 
      out.write("</h5>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("         <div class=\"container\">\n");
      out.write("             <h1 style=\"text-align:left;\">The Shopped Items :</h1>\n");
      out.write("             ");

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
                String sql = "select * from sales where email='" + request.getAttribute("email") + "'";
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {
             
      out.write("\n");
      out.write("             \n");
      out.write("             <br>\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-12\">\n");
      out.write("                <h4>\n");
      out.write("                ");

                sql = "select * from prods where id='" + rs.getString("prodid") + "'";
                ps = conn.prepareStatement(sql);
                ResultSet rs1 = ps.executeQuery(); 
                while(rs1.next())
                {
                    out.println(rs1.getString("prod_name"));
                }
                
      out.write("\n");
      out.write("                </h4>\n");
      out.write("                </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<br>\n");
      out.write("                ");
 }
      out.write("\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                <button class=\"btn btn-default\"><a href=\"prod_disp.jsp\">Go to Product list</a></button>\n");
      out.write("    </body>\n");
      out.write("    \t <script src=\"https://code.jquery.com/jquery-2.1.4.js\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
