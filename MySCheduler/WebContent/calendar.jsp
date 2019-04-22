<!doctype html>
<%@ page import ="java.util.ArrayList"%>
<%@ page import = "helper.Shifts" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>MyScheduler</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <img class="navbar-brand" href="index.jsp" height="50" width="50" src="logo.png">
      <a class="navbar-brand" href="index.jsp">MyScheduler</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Logout</a>
          </li>
        </ul>
        <% String username = "";
        	if(session.getAttribute("username") != null){
        		username = (String) session.getAttribute("username");
        	}; %>
        <font color="white">Welcome <%= username %>!</font>
      </div>
    </nav>
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Work Calendar</h5>
              <%-- <h1> ${array} </h1> --%>
              	<% 
              		ArrayList<String> a = (ArrayList<String>) session.getAttribute("array");
              		System.out.println(a); 
              		String[] temp;
              		ArrayList<String> slots = new ArrayList<String>();
              		ArrayList<String> colors = new ArrayList<String>();
              		if(a != null){
              			System.out.println("a is not null");
              			System.out.println(a.get(0));
              			for(int i = 0; i < a.size(); i++){
   	              			temp = a.get(i).split("\\|");
   	              			if(temp.length == 4){
	   	              			slots.add(temp[0] + "|" + temp[1]);
	   	              			colors.add(temp[3]);
   	              			}
   	              		}
              			System.out.println("slots: " + slots);
              			System.out.println("colors: " + colors);
              		}
              	%>
              <table class="table table-hover">
                <thead>
                  <!-- colors: #FF9CEE, #D5AAFF, #B5B9FF, #85E3FF, #BFFCC6, #FFABAB  -->
                  <tr>
                    <th scope="col"></th>
                    <th scope="col">Mon</th>
                    <th scope="col">Tues</th>
                    <th scope="col">Wed</th>
                    <th scope="col">Thurs</th>
                    <th scope="col">Fri</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                      <th scope="row">8 AM</th>
                      <% if(slots != null && slots.contains("Monday|8")) { %>
                      	<td id="Monday|8" bgcolor="<%= colors.get(slots.indexOf("Monday|8")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|8" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|8")) { %>
                      	<td id="Tuesday|8" bgcolor="<%= colors.get(slots.indexOf("Tuesday|8")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|8" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|8")) { %>
                      	<td id="Wednesday|8" bgcolor="<%= colors.get(slots.indexOf("Wednesday|8")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|8" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|8")) { %>
                      	<td id="Thursday|8" bgcolor="<%= colors.get(slots.indexOf("Thursday|8")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|8" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|8")) { %>
                      	<td id="Friday|8" bgcolor="<%= colors.get(slots.indexOf("Friday|8")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|8" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">9 AM</th>
                      <% if(slots != null && slots.contains("Monday|9")) { %>
                      	<td id="Monday|9" bgcolor="<%= colors.get(slots.indexOf("Monday|9")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|9" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|9")) { %>
                      	<td id="Tuesday|9" bgcolor="<%= colors.get(slots.indexOf("Tuesday|9")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|9" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|9")) { %>
                      	<td id="Wednesday|9" bgcolor="<%= colors.get(slots.indexOf("Wednesday|9")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|9" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|9")) { %>
                      	<td id="Thursday|9" bgcolor="<%= colors.get(slots.indexOf("Thursday|9")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|9" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|9")) { %>
                      	<td id="Friday|9" bgcolor="<%= colors.get(slots.indexOf("Friday|9")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|9" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">10 AM</th>
                      <% if(slots != null && slots.contains("Monday|10")) { %>
                      	<td id="Monday|10" bgcolor="<%= colors.get(slots.indexOf("Monday|10")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|10" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|10")) { %>
                      	<td id="Tuesday|10" bgcolor="<%= colors.get(slots.indexOf("Tuesday|10")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|10" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|10")) { %>
                      	<td id="Wednesday|10" bgcolor="<%= colors.get(slots.indexOf("Wednesday|10")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|10" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|10")) { %>
                      	<td id="Thursday|10" bgcolor="<%= colors.get(slots.indexOf("Thursday|10")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|10" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|10")) { %>
                      	<td id="Friday|10" bgcolor="<%= colors.get(slots.indexOf("Friday|10")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|10" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">11 AM</th>
                      <% if(slots != null && slots.contains("Monday|11")) { %>
                      	<td id="Monday|11" bgcolor="<%= colors.get(slots.indexOf("Monday|11")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|11" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|11")) { %>
                      	<td id="Tuesday|11" bgcolor="<%= colors.get(slots.indexOf("Tuesday|11")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|11" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|11")) { %>
                      	<td id="Wednesday|11" bgcolor="<%= colors.get(slots.indexOf("Wednesday|11")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|11" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|11")) { %>
                      	<td id="Thursday|11" bgcolor="<%= colors.get(slots.indexOf("Thursday|11")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|11" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|11")) { %>
                      	<td id="Friday|11" bgcolor="<%= colors.get(slots.indexOf("Friday|11")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|11" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">12 PM</th>
                      <% if(slots != null && slots.contains("Monday|12")) { %>
                      	<td id="Monday|12" bgcolor="<%= colors.get(slots.indexOf("Monday|12")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|12" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|12")) { %>
                      	<td id="Tuesday|12" bgcolor="<%= colors.get(slots.indexOf("Tuesday|12")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|12" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|12")) { %>
                      	<td id="Wednesday|12" bgcolor="<%= colors.get(slots.indexOf("Wednesday|12")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|12" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|12")) { %>
                      	<td id="Thursday|12" bgcolor="<%= colors.get(slots.indexOf("Thursday|12")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|12" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|12")) { %>
                      	<td id="Friday|12" bgcolor="<%= colors.get(slots.indexOf("Friday|12")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|12" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">1 PM</th>
                      <% if(slots != null && slots.contains("Monday|11")) { %>
                      	<td id="Monday|13" bgcolor="<%= colors.get(slots.indexOf("Monday|13")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|13" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|13")) { %>
                      	<td id="Tuesday|13" bgcolor="<%= colors.get(slots.indexOf("Tuesday|13")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|13" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|13")) { %>
                      	<td id="Wednesday|13" bgcolor="<%= colors.get(slots.indexOf("Wednesday|13")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|13" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|13")) { %>
                      	<td id="Thursday|13" bgcolor="<%= colors.get(slots.indexOf("Thursday|13")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|13" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|13")) { %>
                      	<td id="Friday|13" bgcolor="<%= colors.get(slots.indexOf("Friday|13")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|13" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">2 PM</th>
                      <% if(slots != null && slots.contains("Monday|11")) { %>
                      	<td id="Monday|14" bgcolor="<%= colors.get(slots.indexOf("Monday|14")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|14" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|14")) { %>
                      	<td id="Tuesday|14" bgcolor="<%= colors.get(slots.indexOf("Tuesday|14")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|14" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|14")) { %>
                      	<td id="Wednesday|14" bgcolor="<%= colors.get(slots.indexOf("Wednesday|14")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|14" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|14")) { %>
                      	<td id="Thursday|14" bgcolor="<%= colors.get(slots.indexOf("Thursday|14")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|14" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|14")) { %>
                      	<td id="Friday|14" bgcolor="<%= colors.get(slots.indexOf("Friday|14")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|14" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">3 PM</th>
                      <% if(slots != null && slots.contains("Monday|15")) { %>
                      	<td id="Monday|15" bgcolor="<%= colors.get(slots.indexOf("Monday|15")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|15" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|15")) { %>
                      	<td id="Tuesday|15" bgcolor="<%= colors.get(slots.indexOf("Tuesday|15")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|15" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|15")) { %>
                      	<td id="Wednesday|15" bgcolor="<%= colors.get(slots.indexOf("Wednesday|15")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|15" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|15")) { %>
                      	<td id="Thursday|15" bgcolor="<%= colors.get(slots.indexOf("Thursday|15")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|15" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|15")) { %>
                      	<td id="Friday|15" bgcolor="<%= colors.get(slots.indexOf("Friday|15")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|15" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">4 PM</th>
                      <% if(slots != null && slots.contains("Monday|16")) { %>
                      	<td id="Monday|16" bgcolor="<%= colors.get(slots.indexOf("Monday|16")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|16" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|16")) { %>
                      	<td id="Tuesday|16" bgcolor="<%= colors.get(slots.indexOf("Tuesday|16")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|16" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|16")) { %>
                      	<td id="Wednesday|16" bgcolor="<%= colors.get(slots.indexOf("Wednesday|16")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|16" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|16")) { %>
                      	<td id="Thursday|16" bgcolor="<%= colors.get(slots.indexOf("Thursday|16")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|16" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|16")) { %>
                      	<td id="Friday|16" bgcolor="<%= colors.get(slots.indexOf("Friday|16")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|16" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                    <tr>
                      <th scope="row">5 PM</th>
                      <% if(slots != null && slots.contains("Monday|17")) { %>
                      	<td id="Monday|17" bgcolor="<%= colors.get(slots.indexOf("Monday|17")) %>"></td>
                      <% } else { %>
                      	<td id="Monday|17" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Tuesday|17")) { %>
                      	<td id="Tuesday|17" bgcolor="<%= colors.get(slots.indexOf("Tuesday|17")) %>"></td>
                      <% } else { %>
                      	<td id="Tuesday|17" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Wednesday|17")) { %>
                      	<td id="Wednesday|17" bgcolor="<%= colors.get(slots.indexOf("Wednesday|17")) %>"></td>
                      <% } else { %>
                      	<td id="Wednesday|17" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Thursday|17")) { %>
                      	<td id="Thursday|17" bgcolor="<%= colors.get(slots.indexOf("Thursday|17")) %>"></td>
                      <% } else { %>
                      	<td id="Thursday|17" bgcolor="#FFFFFF"></td>
                      <% } %>
                      <% if(slots != null && slots.contains("Friday|17")) { %>
                      	<td id="Friday|17" bgcolor="<%= colors.get(slots.indexOf("Friday|17")) %>"></td>
                      <% } else { %>
                      	<td id="Friday|17" bgcolor="#FFFFFF"></td>
                      <% } %>
                    </tr>
                  </tbody>
              </table>
              <br>
              <button class="btn-shift btn-lg btn-primary btn-block text-uppercase" onclick="window.location.href = 'schedshift.jsp';" type="submit">Change shifts</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>