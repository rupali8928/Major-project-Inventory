package master;
import java.sql.Connection;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class insertcompany extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String Company;
	private String Contact1;
	private String Contact2;
	private String Address;
	private String Country;
	private String State;
	private String City;
	private String Postalcode;
	private String EmailId;
	private String CompanyWebsite;
	private String RegistrationNo;
	private String Bankname;
	private String GSTno;
	private String Accountno;
	private String PANno;
	private String IFSCcode;
	private String StartFinancialyear;
	private String EndFinancialyear;
		
	
	
			public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public String getContact1() {
		return Contact1;
	}
	public void setContact1(String contact1) {
		Contact1 = contact1;
	}
	public String getContact2() {
		return Contact2;
	}
	public void setContact2(String contact2) {
		Contact2 = contact2;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
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
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getCompanyWebsite() {
		return CompanyWebsite;
	}
	public void setCompanyWebsite(String companyWebsite) {
		CompanyWebsite = companyWebsite;
	}
	public String getRegistrationNo() {
		return RegistrationNo;
	}
	public void setRegistrationNo(String registrationNo) {
		RegistrationNo = registrationNo;
	}
	public String getBankname() {
		return Bankname;
	}
	public void setBankname(String bankname) {
		Bankname = bankname;
	}
	public String getGSTno() {
		return GSTno;
	}
	public void setGSTno(String gSTno) {
		GSTno = gSTno;
	}
	public String getAccountno() {
		return Accountno;
	}
	public void setAccountno(String accountno) {
		Accountno = accountno;
	}
	public String getPANno() {
		return PANno;
	}
	public void setPANno(String pANno) {
		PANno = pANno;
	}
	public String getIFSCcode() {
		return IFSCcode;
	}
	public void setIFSCcode(String iFSCcode) {
		IFSCcode = iFSCcode;
	}
	public String getStartFinancialyear() {
		return StartFinancialyear;
	}
	public void setStartFinancialyear(String startFinancialyear) {
		StartFinancialyear = startFinancialyear;
	}
	public String getEndFinancialyear() {
		return EndFinancialyear;
	}
	public void setEndFinancialyear(String endFinancialyear) {
		EndFinancialyear = endFinancialyear;
	}
			public String ret="error";
			public String execute() {
			HttpServletRequest request=ServletActionContext.getRequest();
			request.getSession();
			
			// new connectionClass();
			// Connection con1 = connectionclass.getConnection();
			Connection con1=new  connectionclass().getConnection();
			
			String query = "INSERT INTO company_master (`Company`, `Contact1`, `Contact2`,`Address`, `Country`, `State`, `City`, `Postalcode`, `EmailId`, `CompanyWebsite`, `RegistrationNo`, `Bankname`, `GSTno`, `Accountno`, `PANno`, `IFSCcode`, `StartFinancialyear`, `EndFinancialyear`)VALUES(?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
			try  {
			
	  			
		        		  PreparedStatement pst = con1.prepareStatement(query);
		        		  pst.setString(1, Company);
		        		  pst.setString(2, Contact1);
		        		  pst.setString(3, Contact2);
		        		  pst.setString(4, Address);
		        		  pst.setString(5, Country);
		        		  pst.setString(6, State);
		        		  pst.setString(7, City);
		        		  pst.setString(8, Postalcode);
		        		  pst.setString(9, EmailId);
		        		  pst.setString(10, CompanyWebsite);
		        		  pst.setString(11, RegistrationNo);
		        		  pst.setString(12, Bankname);
		        		  pst.setString(13, GSTno);
		        		  pst.setString(14, Accountno);
		        		  pst.setString(15, PANno);
		        		  pst.setString(16, IFSCcode);
		        		  pst.setString(17, StartFinancialyear);
		        		  pst.setString(18, EndFinancialyear);
		        		
		      		

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




