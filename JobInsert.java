package allServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import related_data.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JobInsert extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//int job_id=Integer.parseInt(req.getParameter("job_id"));
		String job_role=req.getParameter("job_role");
		String location=req.getParameter("location");
		String posted_on=req.getParameter("posted_on");
		String deadline=req.getParameter("deadline");
		
		System.out.println(job_role +deadline);
		
		Connection connection=DataCon.connect();
		String query1="insert into portal(job_role,location,posted_on,deadline) values(?,?,?,?);";
		
		
		try {
			PreparedStatement po = connection.prepareStatement(query1);
			po.setString(1, job_role);
			po.setString(2, location);
			po.setString(3, posted_on);
			po.setString(4, deadline);
			
			po.executeUpdate();
			
			
			resp.sendRedirect("home.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	
}
