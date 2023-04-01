<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="related_data.DataCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
  int job_id=Integer.parseInt(request.getParameter("job_id"));
  Connection connection=DataCon.connect();
  ResultSet result=null;
  String query="select * from portal where job_id=?;";
  
  try{
  PreparedStatement pa=connection.prepareStatement(query);
  pa.setInt(1, job_id);
  result= pa.executeQuery();
%>

<div class="container d-flex flex-column">
  		<h1 class="text-center">UPDATE IPL 2023 TEAM</h1>
  		<a class="btn btn-primary" href="AddJob.jsp" > </a>
	</div>
	
	<div class="container mt-5">
		<form action="Update" method="post">
		
		<%  while(result.next()){
			
			String job_role=result.getString(2);
			String location=result.getString(3);
			Date posted_on=result.getDate(4);
			Date deadline=result.getDate(5);
		%>
		
		<input type="hidden" class="form-control" id="job_id" name="job_id" value="<%=job_id  %>">
			  <div class="mb-3">
			    <label for="job_role" class="form-label">Team Name</label>
			    <input type="text" class="form-control" id="job_role" name="job_role" value="<%=job_role  %>">
			  </div>
			  <div class="mb-3">
			    <label for="location" class="form-label">Captain Name</label>
			    <input type="text" class="form-control" id="location" name="location" value="<%=location  %>">
			  </div>
			   <div class="mb-3">
			    <label for="posted_on" class="form-label">Team Price</label>
			    <input type="date" class="form-control" id="posted_on" name="posted_on" value="<%=posted_on%>">
			  </div>
			  
			 <div class="mb-3">
			    <label for="deadline" class="form-label">Team Price</label>
			    <input type="date" class="form-control" id="deadline" name="deadline" value="<%=deadline%>">
			  </div>
			  <button type="submit" class="btn btn-primary" >Submit</button>
			  
			  <%
		}
		
		 }
			catch (Exception e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 
			 %>
      </form>
	 </div>

</body>
</html>