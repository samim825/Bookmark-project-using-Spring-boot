<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  <style>
      .background{
          background-color: white;
      }
      .font-color{
          color: white;
      }
      .nav-link:hover {
          color: black;
          background-color:whitesmoke; 
          margin: 0;
          display: block;
      }
      .link:hover{
           color: tomato; 
           text-decoration: none;
          margin: 0;
      }
      .profile-font{
          color: black;
          padding-left: 30px;
      }
      .card-font{
          color: black;
          text-decoration: none;
          background-color: whitesmoke ;
      }
      
  </style>
  
</head>
<body class="background">
    <jsp:include page="header.jsp"/>
<div class="container-fluid">  
    
    <div class="row">      
        <div class="col-sm-3" style="background-color:whitesmoke ;">
            <br><br>
          <div align="center" style="padding-bottom:20px;">
              <img src="../../../../static/assets/images/bgImage.jpg" class="rounded-circle" width="200" height="200" ><br><br>
              <a href="" class="btn btn-primary">Update profile</a>
          </div>

          <h6 class="profile-font">${userAge}</h6>
          <h6 class="profile-font">${userName}</h6>
          <h6 class="profile-font">${userEmail}</h6>
          <h6 class="profile-font">${userMobile}</h6>
          <br><br>
      </div>
  <div class="col-sm-9">
       <br><br>
      <div class="row">
         
          <div class="col-sm-4">
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-bookmark"></i> Total Bookmark</p>
              </div>
           </div>
    </a>
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-user-friends"></i> Total Contact</p>
              </div>
           </div>
    </a>
          </div>
          <div class="col-sm-4">
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-bookmark"></i> Trash Bookmark</p>
              </div>
           </div>
    </a>
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-user-friends"></i> Trash Contact</p>
              </div>
           </div>
    </a>
          </div>
  </div>
  </div>
  </div>
  </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>


