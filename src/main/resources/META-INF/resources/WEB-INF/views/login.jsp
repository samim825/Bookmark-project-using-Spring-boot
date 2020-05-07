<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>
      .background{
          /*background-image: url("static/assets/images/bgImage.jpg");*/
          background-color: MediumTurquoise;
      }
      .font-color{
          color: white;
      }
      
  </style>
</head>
<body class="background">

<div class="container">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-md-6">
            <br><br><br><br><br>
            <h2 align="center" class="font-color">Please Login here</h2>
            <h4 align="center" style="color: tomato;">${SPRING_SECURITY_LAST_EXCEPTION.message}</h4>

            <form action="/login" method="POST">
    <div class="form-group">
      <label for="email" class="font-color">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd" class="font-color">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    <button type="submit" class="btn btn-info btn-block">Login</button>
  </form>
   <div align='center' >
    <a class="font-color" href="forgotPassword.jsp">Forgot password?</a>
   </div>
     <div align='center' class="font-color">
         Don't have an account? <a class="font-color" href="/signUp">Sign up</a>
    </div>
</div>
        <div class="col-sm-3"></div>
    </div>
        </div>
</body>
</html>
