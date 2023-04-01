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
<title>JOBS PORTAL</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<style>
      body{
         background-color: silver;
      
      }




	.post-container{
	    display:flex;
		margin-left: 100px;
		padding-right: 50px;
		
		
		
		
	}
	
	.divf{
	   padding-right: 50px;
	   
	
	}
	
	.field{
	  background-color:teal;
	  padding:20px;
	  border-style: dotted;
	  col
	  column-gap: 40px;
	
	}
	
	
	
	.container{
         margin-right: 50px; 	
	}
	
	
	.container{
	  margin-right: 100px;
	
	}
	
	.btn  {
	 background-color: buttonface;
	 color: black;
	
	}
	
	.text-center:hover{
	    color: aqua;
	}
	
	
</style>
</head>
<body >
<%
	Connection connection =  DataCon.connect();
	ResultSet result=null;
	
		String query = "select * from portal";
		try 
		 {
			Statement s = connection.createStatement();
			result=s.executeQuery(query);
	%>

<div class="container d-flex flex-column">
  		<h1 class="text-center">JOB PORTAL</h1>
  		<a class="btn btn-primary" href="AddJob.jsp">Add New JOB</a>
	</div>
	</br> </br>
	</br> </br>
	
	
		<form class="post-container" >
            
                
                <%
			  while(result.next())
				{ 
				  %>
			<fieldset class="divf">
			<div class="row">
                 <div class="field" >
                 <legend >JOB DESCRIPTION</legend> 
                  <h5>JOB_ID :- <%= result.getInt(1) %></h5>
                  <h5>JOB_ROLE :- <%= result.getString(2) %></h5>
                  <h5>LOCATION :- <%= result.getString(3) %></h5>
                  <h5>POSTED_ON :- <%= result.getDate(4) %></h5>
                  <h5>DEADLINE :- <%= result.getDate(5) %></h5>
                  </br> 
                  <a class="btn btn-warning"href="Updat_team.jsp?job_id=<%=result.getInt(1)%>">Update</a>
                 <a class="btn btn-danger" href="Delete?job_id=<%=result.getInt(1)%>">Delete</a>
                </div>
            </div>
           </fieldset>
           </br> </br>
	</br> </br>
	
			  <% }%>
				
                  
                    
			   
			    
			   
			  <% } 
						catch (Exception e) 
						{
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				%>
			
  		</fieldset>
        </form>
	

</body>
</html>