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

      .font-color{
          color: white;
      }
</style>
</head>
<body style="background-color: teal;">

<div class="container">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-md-6">
            
            <h2 align="center" class="font-color">Sign Up</h2>
            <h4 align="center" style="color: tomato;">${msg}</h4>
            <form action="/signUp" method="POST">
    <div class="form-group">
      <label for="name" class="font-color">Name :</label>
      <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name">
    </div>
    <div class="form-group">
      <label for="email" class="font-color">Email :</label>
      <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email">
    </div>

    <div class="form-group">
      <label for="pwd" class="font-color">Password :</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
            <label for="image" class="font-color">Image :</label>
    <div class="custom-file">

      <input type="file" class="custom-file-input" id="customFile" name="image" accept="image/x-png,image/jpg,image/jpeg">
      <label class="custom-file-label" for="customFile">Choose image</label>
    </div><br><br>
      
    <button type="submit" class="btn btn-info btn-block">Sign in</button>
  </form>
</div>
        <div class="col-sm-3"></div>
</div>
</div>
    

</body>
</html>
