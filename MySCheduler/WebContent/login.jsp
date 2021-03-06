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
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <img class="navbar-brand" href="index.jsp" height="50" width="50" src="logo.png">
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
              <h5 class="card-title text-center">Sign In</h5>
              <form class="form-signin" method="post" action="LoginServlet">
                <div class="form-label-group">
                  <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Username" required autofocus>
                  <label for="inputEmail">Username</label>
                </div>
                <div class="form-label-group">
                  <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
                  <label for="inputPassword">Password</label>
                </div>
                <p id="message">${message}</p>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button> 
                <!-- onclick="window.location.href = 'calendar.html';" -->
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>