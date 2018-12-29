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
@WebServlet(urlPatterns = {"/save"})
public class save extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            int flag = 1;
            String fname = request.getParameter("first-name");
            String lname = request.getParameter("last-name");
            int age = Integer.parseInt(request.getParameter("age"));
            String gen = request.getParameter("gender");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projdata","root","");
            PreparedStatement ps = conn.prepareStatement("insert into user_data values (?,?,?,?,?,?);");
            PreparedStatement p = conn.prepareStatement("insert into session values (?,0);");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setInt(3, age);
            ps.setString(4, gen);
            ps.setString(5, email);
            ps.setString(6, pwd);
            p.setString(1, email);
            PreparedStatement ps1 = conn.prepareStatement("select * from user_data");
            ResultSet rs = ps1.executeQuery();
            while(rs.next())
            {
                if(rs.getString("email").equals(email))
                {
                   flag = 0;
                   break;
                }
                else
                {
                    flag = 1;
                }
            }
            if(flag == 0)
            {
                out.println("<h4 id=" + "message" + ">Already Exists</h4>");
                RequestDispatcher rd = request.getRequestDispatcher("signup.html");
                rd.include(request, response);
            }
            else
            {
                ps.executeUpdate();
                p.executeUpdate();
                RequestDispatcher rd = request.getRequestDispatcher("success.html");
                rd.forward(request, response);
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
