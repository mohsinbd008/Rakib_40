package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class New_Train_Schedeule {

  
public static int save(String callno,String name,String author,String publisher,int quantity, int iquantity, String date){
	int status=0;
	try{
		Connection con=DB.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into bus_details(bus_no, source, destination, total_seat, available_seat, booked_seat, updated_date) values(?,?,?,?,?,?,?)");
		ps.setString(1,callno);
		ps.setString(2,name);
		ps.setString(3,author);
		ps.setString(4,publisher);
		ps.setInt(5,quantity);
		ps.setInt(6,iquantity);
		ps.setString(7,date);
		status=ps.executeUpdate();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}
}
