package allServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import related_data.DataCon;

public class Insert extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username=req.getParameter("username");
		String gmail=req.getParameter("gmail");
		int telnum=Integer.parseInt(req.getParameter("telnum"));
		String password=req.getParameter("password");
		
		System.out.println(username+gmail+telnum+password);
		
		Connection connection=DataCon.connect();
		
		String query="insert into register values(?,?,?,?);";
		
		try {
			PreparedStatement pa=connection.prepareStatement(query);
			
			pa.setString(1, username);
			pa.setString(2, gmail);
			pa.setInt(3, telnum);
			pa.setString(4, password);
			
			pa.executeUpdate();
			
			resp.sendRedirect("home.jsp");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
