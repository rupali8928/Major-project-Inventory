package master;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class deleteattendance extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public String attId;

	
	public String getAttId() {
		return attId;
	}
	public void setAttId(String attId) {
		this.attId = attId;
	}
	
	
	public String ret="error";
	public String execute() {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		
		new connectionclass();
		Connection con=connectionclass.getConnection();
		String query="delete from attendance where id=?";
		
		try {
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, attId);
			pst.executeUpdate();
			
			
			request.getSession().setAttribute("successmsg", "Data Deleted");
			ret="success";
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ret="error";
		}
		
		return ret;
	}
	
	

	
}
