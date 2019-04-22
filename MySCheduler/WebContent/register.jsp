<!doctype html>
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
    </nav>
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">New User Registration</h5>
              <form class="form-signin" method="post" action="RegisterServlet">
                <div class="form-label-group">
                  <input type="text" id="fullname" name="fullname" class="form-control" placeholder="Full Name" required autofocus>
                  <label for="fullname">Full Name</label>
                </div>
                <div class="form-label-group">
                  <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                  <label for="username">Username</label>
                </div>
                <div class="form-label-group">
                  <input type="password" id="password" name="password" class="form-control" placeholder="Password" required autofocus>
                  <label for="password">Password</label>
                </div>
                <div class="form-label-group">
                  <input type="password" id="confpass" name="confpass" class="form-control" placeholder="Confirm Password" required>
                  <label for="confpass">Confirm Password</label>
                </div>
                <div class="custom-control custom-checkbox mb-3">
                  <div class="col">
                    <input type="radio" name="actype" class="custom-control-input" id="employee" checked>
                    <label class="custom-control-label" for="employee">Employee</label>
                  </div>
                  <div class="col">
                    <input type="radio" name="actype" class="custom-control-input" id="manager">
                    <label class="custom-control-label" for="manager">Manager</label>
                  </div>
                </div>
                <p id="message">${message}</p>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" onclick="window.location.href = 'calendar.jsp';" type="submit">Create Account</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>