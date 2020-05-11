<%@page import="java.util.ArrayList"%>
<%@ page import="com.bookmark.model.Contact" %>

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
<!--    DataTables file-->
  <link rel='stylesheet' href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  
  <style>
     
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
      
      
  </style>
  
</head>
<body>
  <jsp:include page="header.jsp"/>
<div class="container">
    <br><br>
    <button  class="btn btn-md btn-primary float-right" data-toggle="modal" data-target="#myModal">Add new</button><br>
<table class="table table-hover table-bordered table-striped" id="myTable">
      <h4 align="center">Contact List</h4>
      <thead>
          <tr>
              <th>SL No </th>
              <th>Name</th>
              <th>Mobile</th>
              <th>E-mail</th>
              <th>Address</th>
              <th>Action</th>
          </tr>
      </thead>
      <tbody>
          <% ArrayList<Contact> contactInfos =(ArrayList<Contact>) request.getAttribute("contactList");
          int cnt=1;
          for(Contact cts : contactInfos){
          %>
          <tr>
              <td><%= cnt%></td>
              <td><%= cts.getName()%></td>
              <td><%= cts.getMobile()%></td>
              <td><%= cts.getEmail()%></td>
              <td><%= cts.getAddress()%></td>
             <td><i class="fas fa-history"> </i>  <i class="fas fa-edit"></i>  <i class="fas fa-trash-alt"></i> </td>
          </tr>
          <% cnt++; } %>
      </tbody>
  </table>
      <br>
</div>
      
      <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Add new Contact Info</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <form action="/addContact" method="POST">
            <div class="form-group">
              <label for="name">Name :</label>
              <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
            </div>
            <div class="form-group">
              <label for="mobile">Mobile :</label>
              <input type="text" class="form-control" id="mobile" placeholder="Enter mobile" name="mobile" required>
            </div>
             <div class="form-group">
              <label for="email">E-mail :</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
            </div>
            <div class="form-group">
              <label for="address">Address :</label>
              <input type="text" class="form-control" id="address" placeholder="Enter address" name="address" required>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
    </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
      
<jsp:include page="footer.jsp"/>
            <script>
      $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</body>
</html>


