import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import JDBCDriver;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  /**
   * Handles user login requests.
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  System.out.println("POST LoginServlet");
    
    // pass the variables into the JDBC login call
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    //Attempt to login the user
    String responseMessage = "";
    responseMessage = JDBCDriver.login(username, password);
    
    String nextPage = "";
    //if successful direct to a new page
    if(responseMessage.equals(null))
    {
    	nextPage = "/calendar.html";
    }
    //if unsuccessful direct back to the same page
    else
    {
    	request.getSession().setAttribute("message", responseMessage);
    	nextPage = "/login.html";
    }
    
	RequestDispatcher dispatch = getServletContext().getRequestDispatcher(nextPage);
	dispatch.forward(request, response);

  }

}