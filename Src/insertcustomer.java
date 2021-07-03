package master;
import java.sql.Connection;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class insertcustomer extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String FirstName;
	private String LastName;
    private String Address1;
    private String Address2;  
    private String Country;
	private String State;
	private String City;
	private String Postalcode;
	private String DOB;
	private String Emailid;
	private String Religion;
	private String Mobile1;
	private String Mobile2;
	private String Gender;
	
	
	
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
	    public String getAddress1() {
			return Address1;
		}
		public void setAddress1(String address1) {
			Address1 = address1;
		}
		public String getAddress2() {
			return Address2;
		}
		public void setAddress2(String address2) {
			Address2 = address2;
		}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
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
	public String getReligion() {
		return Religion;
	}
	public void setReligion(String religion) {
		Religion = religion;
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
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getRet() {
		return ret;
	}
	public void setRet(String ret) {
		this.ret = ret;
	}
	
		
	
	
			
			public String ret="error";
			public String execute() {System.out.println("in execute customer...."+Address1);
			HttpServletRequest request=ServletActionContext.getRequest();
			request.getSession();
			
			// new connectionClass();
			// Connection con1 = connectionclass.getConnection();
			Connection con1=new  connectionclass().getConnection();
			
			String query = "INSERT INTO customer (FirstName, LastName, Address1, Address2, Country, State, City, Postalcode, DOB, Emailid, Religion, Mobile1, Mobile2, Gender)VALUES(?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";
			try  {
			
	  			
		        		  PreparedStatement pst = con1.prepareStatement(query);
		        		  pst.setString(1, FirstName);
		        		  pst.setString(2, LastName);
		        		  pst.setString(3, Address1);
		        		  pst.setString(4, Address2); 
		        		  pst.setString(5, Country);
		        		  pst.setString(6, State);
		        		  pst.setString(7, City);
		        		  pst.setString(8, Postalcode);
		        		  pst.setString(9, DOB);
		        		  pst.setString(10, Emailid);
		        		  pst.setString(11, Religion);
		        		  pst.setString(12, Mobile1);
		        		  pst.setString(13, Mobile2);
		        		  pst.setString(14, Gender);

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




