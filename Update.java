package allServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import related_data.DataCon;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Update extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int job_id=Integer.parseInt(req.getParameter("job_id"));
		String job_role=req.getParameter("job_role");
		String location=req.getParameter("location");
		String posted_on=req.getParameter("posted_on");
		String deadline=req.getParameter("deadline");

		System.out.println(job_role+location+deadline);
		
		
		Connection connection=DataCon.connect();
		String insert_query="update portal set job_role=?, location=?, posted_on=?,deadline=? where job_id=?";
		
		
		
		try {
			PreparedStatement pl = connection.prepareStatement(insert_query);
			
			pl.setString(1, job_role );
			pl.setString(2, location);
			pl.setString(3, posted_on);
			pl.setString(4, deadline);
			pl.setInt(5, job_id);
			pl.executeUpdate();
			
			
			resp.sendRedirect("home.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	

}
