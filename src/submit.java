import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class submit
 */
@WebServlet("/submit")
public class submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
			PreparedStatement ps = con.prepareStatement("insert into suspect values(?,?,?,?,?,?,?,?,?,?,?,?)");
	        String i = request.getParameter("id");
	        String n = request.getParameter("name");
	        String f = request.getParameter("fathername");
	        String a = request.getParameter("address");
	        String s = request.getParameter("sex");
	        String ag = request.getParameter("age");
	        String p = request.getParameter("pincode");
	        String e = request.getParameter("emailid");
	        String d = request.getParameter("dob");
	        String m = request.getParameter("mobileno");
	        String sy = request.getParameter("symptoms");
	        String c = request.getParameter("corona");
	        
			ps.setString(1, i);
			ps.setString(2, n);
			ps.setString(3, f);
			ps.setString(4, a);
			ps.setString(5, s);
			ps.setString(6, ag);
			ps.setString(7, p);
			ps.setString(8, e);
			ps.setString(9, d);
			ps.setString(10, m);
			ps.setString(11, sy);
			ps.setString(12, c);
		

			int g = ps.executeUpdate();
			
			System.out.println("Inserted");

		} catch (Exception e2) {
			System.out.println(e2);
		}
	}

}
