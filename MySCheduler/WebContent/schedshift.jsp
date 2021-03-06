<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>MyScheduler</title>
    
    <script>
    	var socket;
    	function connectToServer() {
    		socket = new WebSocket("ws://localhost:8080/MySCheduler/ws");
    		socket.onopen = function(event) {
    			//document.getElementById("test").innerHTML += "Connected!";
    			console.log("Connected");
    			String message = "Connection:" + document.getElementById("username").value;
    			socket.send(message);
    		}
    		socket.onmessage = function(event){
    			//document.getElementById("test").innerHTML += event.data + "<br />";
    			console.log(event.data);
    		}
    		socket.onclose = function(event){
    			//document.getElementById("test").innerHTML += event.data + "Disconnected";
    			console.log("Disconnected");
    		}
    	}
    	function sendMessage(){
    		//console.log(document.sched.monday8.value);
    		
    		String message = document.getElementById("username").value;
    		
    		if(document.getElementById("wednesday9").checked){
    			message += "wednesday-9";
    		}
    		if(document.getElementById("monday9").checked){
    			message += "monday-9";
    		}

    		//(document.getElementById("monday-9").checked);
    		socket.send(message);
    		return false;
    	}
    </script>
  </head>
  <body onload="connectToServer()">
  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <img class="navbar-brand" href="index.jsp" height="50" width="50" src="logo.png">
      <a class="navbar-brand" href="index.jsp">MyScheduler</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
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
              <h5 class="card-title text-center">Employee Availability</h5>
              <form name = "sched" class="form-signin" method="post" action="ScheduleServlet">
              	<input type="hidden" id="username" name="username" value="<%= username %>">
            
                
                <table class="table table-hover">
                  <thead>
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
                      <td bgcolor="#FFFFFF">
                        <label class="shell">
                          <input id="monday8" type="checkbox" name="checkbox" value="Monday|8">
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
                          <input type="checkbox" id="monday9" name="checkbox" value="Monday|9">
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
                          <input type="checkbox" name="checkbox" id="wednesday9" value="Wednesday|9">
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
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">Weekly hours to work</span>
                  </div>
                  <input type="number" class="form-control" name="hours" required>
                </div>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" onclick="return sendMessage(); window.location.href = 'calendar.jsp';" type="submit">Submit</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>