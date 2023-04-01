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
     .register{
    
     text-align: center;
     font-size: 20px;
     background-color: black;
     color: gray;
     padding-top: 30px;
     
     }


</style>



</head>
<body>
<h1>Registration form</h1>

        <form  action="Insert" method="post" >
         <legend style="font-size: 25px;">Enter your details</legend>
            <fieldset class="register">
               
                <input type="text" style="height: 18px;" placeholder="create your username" id="username" name="username" value=""> 
                </br> </br>

                <input type="email"  style="height: 18px;" placeholder="enter your gmail" id="gmail" name="gmail" value="">
                </br> </br>

                <input type="tel"  style="height: 18px;" placeholder="enter your telephone num" id="telnum" name="telnum" value="">
                </br> </br>

                <input type="password"  style="height: 18px;" placeholder="create passworrd" id="password" name="password" value="">
                </br></br>
                
                 <button>Submit</button>
            </fieldset>
           
        </form>



    </div>

</body>
</html>