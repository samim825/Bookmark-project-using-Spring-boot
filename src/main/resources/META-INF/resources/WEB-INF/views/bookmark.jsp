<%@page import="java.util.ArrayList"%>
<%@page import="model.BookmarkTable"%>
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
<!--  DataTables file-->
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
<body >
    <jsp:include page="header.jsp"/>
<div class="container">
   <br><br>
<button  class="btn btn-md btn-primary float-right" data-toggle="modal" data-target="#myModal">Add new</button><br><br>
  <table class="table table-hover table-striped table-bordered" id="myTable">
      <thead>
          <tr>
              <th>SL No</th>
              <th>Link</th>
              <th>Details</th>
              <th>Comment</th>
              <th>Action</th>
          </tr>
      </thead>
      <tbody>
          <% ArrayList<BookmarkTable> infos = (ArrayList<BookmarkTable>) request.getAttribute("infos"); 
          int cnt=1;
          for(BookmarkTable bt:infos){
          %>
          <tr>
              <td><%= cnt%></td>
              <td><a href="https://www.<%= bt.getLink() %>" target="_blank"><%= bt.getLink() %></a></td>
              <td><%= bt.getDetails()%></td>
              <td><%= bt.getComment() %></td>
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
          <h4 class="modal-title">Add new Link</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <form action="Bookmark" method="POST">
            <div class="form-group">
              <label for="link">Link :</label>
              <input type="text" class="form-control" id="link" placeholder="Enter Link" name="link" required>
            </div>
            <div class="form-group">
              <label for="pwd">Details :</label>
              <input type="text" class="form-control" id="details" placeholder="Write details about the link" name="details" required>
            </div>
             <div class="form-group">
              <label for="pwd">Comment :</label>
              <input type="text" class="form-control" id="comment" placeholder="Give a comment" name="comment" required>
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
      
    <% if(cnt<=5){ %>
    <br><br><br><br>
    <% } %>
    <jsp:include page="footer.jsp"/>
      <script>
      $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</body>
</html>


