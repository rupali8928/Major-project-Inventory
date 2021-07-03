package master;
import java.sql.Connection;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;
public class inserttax extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String Percentage;
	private String TaxName;
	
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
	HttpServletRequest request=ServletActionContext.getRequest();
	request.getSession();
	
	// new connectionClass();
	// Connection con1 = connectionclass.getConnection();
	Connection con1=new  connectionclass().getConnection();
	
	String query = "INSERT INTO tax_master (TaxName, Percentage)VALUES(?, ?)";
	try  {
		 PreparedStatement pst = con1.prepareStatement(query);
		  pst.setString(1, TaxName);
		  pst.setString(2, Percentage);
	
	
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





