package master;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class updatetax extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String taxId;
	private String TaxName;
	private String Percentage;
	public String getTaxId() {
		return taxId;
	}
	public void setTaxId(String taxId) {
		this.taxId = taxId;
	}
	
	
	public String getTaxName() {
		return TaxName;
	}
	public void setTaxName(String taxName) {
		TaxName = taxName;
	}
	public String getPercentage() {
		return Percentage;
	}
	public void setPercentage(String percentage) {
		Percentage = percentage;
	}
	public String ret="error";
	public String execute() {
		

		
	// new connectionClass();
	// Connection con1 = connectionclass.getConnection();
	Connection con1=new connectionclass().getConnection();
	HttpServletRequest request=ServletActionContext.getRequest();
	request.getSession();
	String query = "UPDATE tax_master SET TaxName=?, Percentage=? WHERE id='"+taxId+"'";
	System.out.println("Sql..........."+query);
	try  {
		 PreparedStatement pst = con1.prepareStatement(query);
		  pst.setString(1, TaxName);
		  pst.setString(2, Percentage);
			/* pst.setString(3,taxId); */
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

		  
	
	