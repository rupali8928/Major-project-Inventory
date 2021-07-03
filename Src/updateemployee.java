package master;
import java.sql.Connection;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;


public class updateemployee extends ActionSupport {
	private static final long serialVersionUID = 1L;

	public String empId;
	private String FirstName;
	private String LastName;
    private String Address;
    private String State;
	private String City;
	private String Postalcode;
	private String DOB;
	private String Emailid;
	private String Mobile1;
	private String Mobile2;
	private String Position;
	private String Salary;
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}

	
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getPostalcode() {
		return Postalcode;
	}
	public void setPostalcode(String postalcode) {
		Postalcode = postalcode;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getEmailid() {
		return Emailid;
	}
	public void setEmailid(String emailid) {
		Emailid = emailid;
	}
	public String getMobile1() {
		return Mobile1;
	}
	public void setMobile1(String mobile1) {
		Mobile1 = mobile1;
	}
	public String getMobile2() {
		return Mobile2;
	}
	public void setMobile2(String mobile2) {
		Mobile2 = mobile2;
	}
	public String getPosition() {
		return Position;
	}
	public void setPosition(String position) {
		Position = position;
	}
	public String getSalary() {
		return Salary;
	}
	public void setSalary(String salary) {
		Salary = salary;
	}
	
	public String ret="error";
	public String execute() {
	HttpServletRequest request=ServletActionContext.getRequest();
	request.getSession();
	
	// new connectionClass();
	// Connection con1 = connectionclass.getConnection();
	Connection con1=new  connectionclass().getConnection();
	String query = "UPDATE employee SET FirstName=?, LastName=?, Address=?, State=?, City=?, Postalcode=?,DOB=?, EmailId=?, Mobile1=?, Mobile2=?,Position=?, Salary=? WHERE id='"+empId+"'";
	try  {
		 PreparedStatement pst = con1.prepareStatement(query);
		  pst.setString(1, FirstName);
		  pst.setString(2, LastName);
		  pst.setString(3, Address);
		  pst.setString(4, State);
		  pst.setString(5, City);
		  pst.setString(6, Postalcode);
		  pst.setString(7, DOB);
		  pst.setString(8, Emailid);
		  pst.setString(9, Mobile1);
		  pst.setString(10, Mobile2);
		  pst.setString(11,Position);
		  pst.setString(12,Salary);
		 /* pst.setString(13, empId);*/
  		

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




