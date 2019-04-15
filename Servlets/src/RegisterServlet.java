import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import com.google.gson.Gson;
//import driver.JDBCDriver;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Handles user registration requests.
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  System.out.println("POST RegisterServlet");
    
    //this variable is not used 
    String fullname = request.getParameter("fullname");
    
    //pass these variables into the JDBC register call
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confpass = request.getParameter("confpass");
    
    //holds whether person is employee or manager
    String actype = request.getParameter("actype");
    boolean isEmployer = false;
    
    if(actype.equals("manager"))
    {
    	isEmployer = true;
    }
    else
    {
    	isEmployer = false;
    }

    //Attempt to register the user
    String responseMessage = "";
    responseMessage = JDBCDriver.register(username, password, confpass, isEmployer);

    
    String nextPage = "";
    
    //if successful direct to a new page
    if(responseMessage.equals(null))
    {
    	request.getSession().setAttribute("message", responseMessage);
    	nextPage = "/calendar.html";
    }
    //if unsuccessful direct back to the same page
    else
    {
    	request.getSession().setAttribute("message", responseMessage);
    	nextPage = "/register.html";
    }
    
	RequestDispatcher dispatch = getServletContext().getRequestDispatcher(nextPage);
	dispatch.forward(request, response);
      
  }

}