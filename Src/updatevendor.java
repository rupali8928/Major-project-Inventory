package master;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class updatevendor extends ActionSupport {
	private static final long serialVersionUID = 1L;
	public String vendorId;	
	private String Company;
	private String Address;
	private String Country;
	private String State;
	private String City;
	private String Postalcode;
	private String Emailid;
	private String Website;
	private String Products;
	private String Bank;
	private String Branch;
	private String Accountno;
	private String IFSC;
	private String Licenseno;
	private String Contact;
	
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	public String getVendorId() {
		return vendorId;
	}
	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
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
	public String getEmailid() {
		return Emailid;
	}
	public void setEmailid(String emailid) {
		Emailid = emailid;
	}
	public String getWebsite() {
		return Website;
	}
	public void setWebsite(String website) {
		Website = website;
	}
	public String getProducts() {
		return Products;
	}
	public void setProducts(String products) {
		Products = products;
	}
	public String getBank() {
		return Bank;
	}
	public void setBank(String bank) {
		Bank = bank;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBranch(String branch) {
		Branch = branch;
	}
	public String getAccountno() {
		return Accountno;
	}
	public void setAccountno(String accountno) {
		Accountno = accountno;
	}
	public String getIFSC() {
		return IFSC;
	}
	public void setIFSC(String iFSC) {
		IFSC = iFSC;
	}
	public String getLicenseno() {
		return Licenseno;
	}
	public void setLicenseno(String licenseno) {
		Licenseno = licenseno;
	}
	
	

	public String getRet() {
		return ret;
	}
	public void setRet(String ret) {
		this.ret = ret;
	}
public String ret="error";
public String execute() {

	System.out.println("in execute vendor....");
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	
	new connectionclass();
	Connection con=connectionclass.getConnection();
	String query = "UPDATE  vendor SET Company=?,Address=?, Country=?,State=?,City=?,Postalcode=?,Emailid=?,Website=?, Products=?,Bank=?,Branch=?,Accountno=?, IFSC=?,Licenseno=?,Contact=?WHERE id='"+vendorId+"'";
		
	try {
									
									PreparedStatement pst=con.prepareStatement(query);
									
									  pst.setString(1, Company);
					        		  pst.setString(2, Address);
					        		  pst.setString(3, Country);	
					        		  pst.setString(4, State);
					        		  pst.setString(5, City);
					        		  pst.setString(6, Postalcode);
					        		  pst.setString(7, Emailid);					        		 
					        		  pst.setString(8, Website);
					        		  pst.setString(9, Products);
					        		  pst.setString(10, Bank);
					        		  pst.setString(11,  Branch);					        		  
					        		  pst.setString(12, Accountno);
					        		  pst.setString(13, IFSC);
					        		  pst.setString(14, Licenseno);					        		  
					        	      pst.setString(15, Contact);
					        		  
					        		  pst.executeUpdate();  
					        		  
							      		
					        			HttpServletRequest request1=ServletActionContext.getRequest();
					        			request.getSession();
					        		  
					        		  request.getSession().setAttribute("successmsg", "Data Saved");
					  				  
					        		  ret="success";
					        		  pst.close();
					        		  con.close();
					    } catch (Exception e) {
					    	e.printStackTrace();
					    	ret="error";
					    }
					    
						return ret;
					}
				}




