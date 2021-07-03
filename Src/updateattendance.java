package master;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;
public class updateattendance {
	private static final long serialVersionUID = 1L;
	private String attId; 
	private String employee;
	private String date;
	private String attendance;
	private String intime;
	private String outtime;
	private String overtime;
	public String getAttId() {
		return attId;
	}
	public void setAttId(String attId) {
		this.attId = attId;
	}

	public String getEmployee() {
		return employee;
	}
	public void setEmployee(String employee) {
		this.employee = employee;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	public String getOuttime() {
		return outtime;
	}
	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}
	public String getOvertime() {
		return overtime;
	}
	public void setOvertime(String overtime) {
		this.overtime = overtime;
	}
	
	

	public String ret="error";
	public String execute() {

	
	// new connectionClass();
	// Connection con1 = connectionclass.getConnection();
	Connection con1=new connectionclass().getConnection();
	String query = "UPDATE attendance SET employee=?, date=?,attendance=?,intime=?,outtime=?,overtime=? WHERE id='"+attId+"'";
	System.out.println("Sql..........."+query);
	try  {
	
			
        		  PreparedStatement pst = con1.prepareStatement(query);
        		  pst.setString(1, employee);
        		  pst.setString(2, date);
        		  
        		  
        		  pst.setString(3, attendance);
        		  pst.setString(4, intime);
        		  pst.setString(5, outtime);
        		  pst.setString(6, overtime);
        		 
        		
         		 
        		  pst.executeUpdate();
      		
        			HttpServletRequest request=ServletActionContext.getRequest();
        			request.getSession();
        		  
        		  request.getSession().setAttribute("successmsg", "Data Saved");
  				  
        		  ret="success";
        		  pst.close();
        		  con1.close();
    } catch (Exception e) {
    	e.printStackTrace();
    	ret="error";
    }
    
	return ret;
}
}




