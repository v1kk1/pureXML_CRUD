package modelPack;

import java.sql.SQLException;

import javax.naming.NamingException;

public class DbConnect {
	javax.naming.InitialContext ctx=null;
	javax.sql.DataSource ds=null;
	java.sql.Connection  con=null;
	java.sql.Statement st=null;
	java.sql.ResultSet rs=null;
	public DbConnect(){
		
		try {
			ctx = new javax.naming.InitialContext();
			 ds =(javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/mydbpool");
			con = ds.getConnection(); 
			st = con.createStatement();
			} catch (SQLException e) {
				System.out.print("\nSQL exception occured!!!!");
				e.printStackTrace();
			} catch (NamingException e) {
				System.out.print("\nNaming exception occured!!!!");
			e.printStackTrace();
		}
	}

	public void executeDbUpdate(String query){
		try {
			st.executeUpdate(query);
		} catch (SQLException e) {
			System.out.print("\nSQL exception occured!!!!");
			e.printStackTrace();
		}
	}
	public java.sql.ResultSet executeDbSelect(String query){
		try {
			rs=st.executeQuery(query);
		} catch (SQLException e) {
			System.out.print("\nSQL exception occured!!!!");
			e.printStackTrace();
		}
		return rs;
	}
}
