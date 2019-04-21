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
    <title>SCheduler</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
              		for(int i = 0; i < a.size(); i++){
              			temp = a.get(i).split("\\|");
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
                      <td id="Monday|8" bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|8">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|8">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|8">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|8">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|8">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">9 AM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|9">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|9">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|9">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|9">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|9">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">10 AM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|10">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|10">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|10">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|10">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|10">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">11 AM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|11">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|11">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|11">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|11">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|11">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">12 PM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|12">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|12">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|12">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|12">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|12">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">1 PM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|13">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|13">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|13">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|13">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|13">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2 PM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|14">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|14">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|14">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|14">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|14">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">3 PM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|15">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|15">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|15">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|15">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|15">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">4 PM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|16">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|16">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|16">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|16">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|16">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">5 PM</th>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Monday|17">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Tuesday|17">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Wednesday|17">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Thursday|17">
                          <span class="checkmark"></span>
                        </label>
                      </td>
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input type="checkbox" name="checkbox" value="Friday|17">
                          <span class="checkmark"></span>
                        </label>
                      </td>
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