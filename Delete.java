package allServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import related_data.DataCon;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Delete extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int job_id=Integer.parseInt(req.getParameter("job_id"));
		System.out.println(job_id);
		
		
		
		Connection connecttion =DataCon.connect();
		
		String query="delete from portal where job_id=?;";
		
		PreparedStatement pi;
		try {
			pi = connecttion.prepareStatement(query);
			pi.setInt(1, job_id);
			
			pi.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		resp.sendRedirect("home.jsp");
		
	}
	
	
}
