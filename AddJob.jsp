<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="related_data.DataCon" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	
	.container{
	    text-align: center;
	    padding: 30px;
	    border-style:solid;
	    background-color: gray;
	    
	
	}
	
	
	
</style>
</head>
<body>


		<form action="JobInsert" method="post" class="container mt-5">
			  <h1>ENTER JOB DETAILS</h1>
			  </br> </br>
			  
			  <div class="mb-3">
			    <label for="job_role" class="form-label">JOB_ROLE</label>
			    <input type="text" class="form-control" id="job_role" name="job_role" value="">
			  </div>
			  </br> </br>
			   <div class="mb-3">
			    <label for="location" class="form-label">LOCATION</label>
			    <input type="text" class="form-control" id="location" name="location" value="">
			  </div>
			  </br> </br>
			  <div class="mb-3">
			    <label for="posted_on" class="form-label">POSTED_ON</label>
			    <input type="date" class="form-control" id="posted_on" name="posted_on" value="">
			  </div>
			  </br> </br>
			  <div class="mb-3">
			    <label for="deadline" class="form-label">DEADLINE</label>
			    <input type="date" class="form-control" id="deadline" name="deadline" value="">
			  </div>
			  </br> </br>
			  <button type="submit" class="btn btn-primary" href="home.jsp">Submit</button>
		</form>
	 

</body>
</html>