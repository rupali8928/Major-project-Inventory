package master;
import java.sql.Connection;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class insertattendance {
	private static final long serialVersionUID = 1L;
	private String employee;
	private String date;
	private String attendance;
	

	
	private String intime;
	private String outtime;
	private String overtime;
	
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

	public String getRet() {
		return ret;
	}
	public void setRet(String ret) {
		this.ret = ret;
	}
	
			public String ret="error";
			public String execute() {
				
				System.out.println("in execute attendance...."+employee);
			HttpServletRequest request=ServletActionContext.getRequest();
			request.getSession();
			
			// new connectionClass();
			// Connection con1 = connectionclass.getConnection();
			Connection con1=new  connectionclass().getConnection();
			 PreparedStatement pst=null;
	
	String query = "INSERT INTO attendance (employee, date, attendance,intime, outtime,overtime)VALUES(?, ?, ?, ?, ?, ?)";
	//System.out.println("query :"+query);
	try  {
	
			
        		  pst = con1.prepareStatement(query);
        		  pst.setString(1,employee);
        		  pst.setString(2, date);
        		  pst.setString(3, attendance);
        		  pst.setString(4, intime);
        		  pst.setString(5, outtime);
        		  pst.setString(6, overtime);
        		 
        		
      		

        		  pst.executeUpdate();
      		

        		  
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





