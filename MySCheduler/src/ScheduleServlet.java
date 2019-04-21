import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import JDBCDriver;

/**
 * Servlet implementation class ScheduleServlet
 */
@WebServlet("/ScheduleServlet")

//public class Shifts {
//	String day;
//	int time;
//	
//	public Shifts(String day, int time) {
//		this.day = day;
//		this.time = time;
//	}
//}

//class Cell {
//	String day;
//	int time;
//	String username;
//	String color;
//	
//	public Cell(String day, int time, String username, String color) {
//		this.day = day;
//		this.time = time;
//		this.username = username;
//		this.color = color;
//	}
//}

public class ScheduleServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  /**
   * Handles user login requests.
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  System.out.println("POST ScheduleServlet");
    
    // get the user's checked days and times
	Random rand = new Random();
	String username = request.getParameter("username");
//	String username = "Joe";
	String[] s = request.getParameterValues("checkbox");
	ArrayList<Shifts> availability = new ArrayList();
	for(int i=0; i < s.length; i++)
	{
		String[] info = s[i].split("\\|");
		availability.add(new Shifts(info[0], Integer.parseInt(info[1])));
	}
	
	//get the user's number of hours
	String hours = request.getParameter("hours");
	int h = Integer.parseInt(hours);
	

	//enter in the number of hours
	JDBCDriver.addWorkedHours(JDBCDriver.GetIdByName(username), h);
    ArrayList<Cell> C = new ArrayList<Cell>();
    ArrayList<String> passInformation = new ArrayList<String>();
    String line = "";
	
	for(int i=0; i < h; i++)
	{
		//allow user to take the time and store that in the database
		int select = rand.nextInt(availability.size());
		JDBCDriver.takeTime(JDBCDriver.GetIdByName(username), availability.get(select).day, availability.get(select).time, true);
		String color = JDBCDriver.getColor(JDBCDriver.GetIdByName(username));
		System.out.println("color: " + color);
		Cell c = new Cell(availability.get(select).day, availability.get(select).time, username, color);
		line = availability.get(select).day + "|" + availability.get(select).time + "|" + username + "|" + color;
		availability.remove(select);
		C.add(c);
		passInformation.add(line);
	}
	request.getSession().setAttribute("array", passInformation);
	request.getSession().setAttribute("test", "Hi");
	RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/calendar.jsp");
	dispatch.forward(request, response);
	
  }

}