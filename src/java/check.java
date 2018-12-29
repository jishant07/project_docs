import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/check"})
public class check extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            PrintWriter out = response.getWriter();
            int flag = 1;
            String email =  request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
            PreparedStatement ps = conn.prepareStatement("select * from user_data;");
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                String db_fname = rs.getString("fname");
                String db_lname = rs.getString("lname");
                int db_age = rs.getInt("age");
                String db_gen = rs.getString("gen");
                String db_email = rs.getString("email");
                String db_pwd = rs.getString("pwd");
                if((db_email.equals(email)) && (db_pwd.equals(pwd)))
                {
                   flag = 1;
                   String sql = "UPDATE `session` SET `code`=1 WHERE email='" + db_email +"'";
                   PreparedStatement p = conn.prepareStatement(sql);
                   p.executeUpdate();
                   request.setAttribute("isLoggedIn", "true");
                   request.setAttribute("email", db_email);
                   request.setAttribute("fname", db_fname);
                   request.setAttribute("lname", db_lname);
                   request.setAttribute("age", db_age);
                   request.setAttribute("gender", db_gen);
                   break;
                }
                else
                {
                    flag = 0;
                }
            }
            if((flag == 1))
            {
                RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
                rd.forward(request,response);
                request.setAttribute("isLoggedIn","flase");
            }
            else
            {
                out.println("<h5 style='text-align:center;margin:0;background:white;color:black;'>The credentials are wrong please try again..<h5>");
                RequestDispatcher rd = request.getRequestDispatcher("signin.html");
                rd.include(request,response);
            }
        }
        catch (Exception e)
        {
            PrintWriter out = response.getWriter();
            out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
