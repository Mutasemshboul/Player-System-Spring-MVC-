<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>

<fo:form class="form-horizontal" action="savePlayer" modelAttribute="player"  >



      <fo:hidden path="id"  />
  
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Player Address:</label>
    <div class="col-sm-10">
      <fo:input type="text" path="address" class="form-control" id="email" placeholder="Enter Address"/>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Player Name:</label>
    <div class="col-sm-10">
      <fo:input type="text" path="name" class="form-control" id="email" placeholder="Enter Name"/>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Player Number:</label>
    <div class="col-sm-10">
      <fo:input type="text" path="number" class="form-control" id="email" placeholder="Enter Number"/>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Player Phone:</label>
    <div class="col-sm-10">
      <fo:input type="text" path="phone" class="form-control" id="email" placeholder="Enter Phone"/>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</fo:form>
</body>
</html>