package next.xadmin.login.database;




	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	import next.xadmin.login.bean.RegisterBean;

	public class RegisterDao {
		
		private String dbUrl = "jdbc:mysql://localhost:3306/userdb";
		private String dbUname = "devuser";
		private String dbPassword = "Pooja@18";
		private String dbDriver = "com.mysql.cj.jdbc.Driver";
		
		public void loadDriver(String dbDriver)
		{
			try {
				Class.forName(dbDriver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public Connection getConnection()
		{
			Connection con = null;
			try {
				con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return con;
		}
		
		public boolean validate(RegisterBean registerBean)
		{
			boolean status = false;
			
			loadDriver(dbDriver);
			Connection con = getConnection();
			
			String sql = "insert into login (username,password,emailid,phonenumber) values(?,?,?,?)";
			PreparedStatement ps;
			try {
			ps = con.prepareStatement(sql);
			ps.setString(1, registerBean.getUsername());
			ps.setString(2, registerBean.getPassword());
			ps.setString(3, registerBean.getEmailid());
			ps.setString(4, registerBean.getPhonenumber());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return status;
		}
		}
