package master;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class deleteemployee extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public String empId;

	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	
	
	public String ret="error";
	public String execute() {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		
		new connectionclass();
		Connection con=connectionclass.getConnection();
		String query="delete from employee where id=?";
		
		try {
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, empId);
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
