package master;
import java.sql.Connection;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class insertproduct extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String ProductId;
	private String Name;
	private String Quantity;
	private String Unit;
	private String SellingPrice;
	private String SellingTax;
	private String PurchasePrice;
	private String PurchaseTax;
	private String GST;
	private String HSN;
	private String EANcode;
	public String getProductId() {
		return ProductId;
	}
	public void setProductId(String productId) {
		ProductId = productId;
	}

	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getQuantity() {
		return Quantity;
	}
	public void setQuantity(String quantity) {
		Quantity = quantity;
	}
	public String getUnit() {
		return Unit;
	}
	public void setUnit(String unit) {
		Unit = unit;
	}
	public String getSellingPrice() {
		return SellingPrice;
	}
	public void setSellingPrice(String sellingPrice) {
		SellingPrice = sellingPrice;
	}
	public String getSellingTax() {
		return SellingTax;
	}
	public void setSellingTax(String sellingTax) {
		SellingTax = sellingTax;
	}
	public String getPurchasePrice() {
		return PurchasePrice;
	}
	public void setPurchasePrice(String purchasePrice) {
		PurchasePrice = purchasePrice;
	}
	public String getPurchaseTax() {
		return PurchaseTax;
	}
	public void setPurchaseTax(String purchaseTax) {
		PurchaseTax = purchaseTax;
	}
	public String getGST() {
		return GST;
	}
	public void setGST(String gST) {
		GST = gST;
	}
	public String getHSN() {
		return HSN;
	}
	public void setHSN(String hSN) {
		HSN = hSN;
	}
	public String getEANcode() {
		return EANcode;
	}
	public void setEANcode(String eANcode) {
		EANcode = eANcode;
	}
	
	public String ret="error";
	public String execute() {
	HttpServletRequest request=ServletActionContext.getRequest();
	request.getSession();
	
	// new connectionClass();
	// Connection con1 = connectionclass.getConnection();
	Connection con1=new  connectionclass().getConnection();

	String query = "INSERT INTO product (`ProductId`, `Name`, `Quantity`, `Unit`, `SellingPrice`, `PurchasePrice`, `SellingTax`, `PurchaseTax`, `GST`, `HSN`, `EANcode`) VALUES (?, ?, ?, ?,?, ?, ?, ?, ?, ?,?)"; 
			try  {
				
				
				
				
				

	  			
      		  PreparedStatement pst = con1.prepareStatement(query);
      		  pst.setString(1,ProductId );
      		  pst.setString(2,Name );
      		  pst.setString(3,Quantity);
      		  pst.setString(4,Unit);
      		  pst.setString(5, SellingPrice);
      		  pst.setString(6, PurchasePrice);
      		  pst.setString(7, SellingTax);
      		  pst.setString(8, PurchaseTax);
      		  pst.setString(9, GST);
      		  pst.setString(10, HSN);
      		  
      		  pst.setString(11, EANcode);
      		  
      		
    		

      		  pst.executeUpdate();
    		

      		  
      		  request.getSession().setAttribute("successmsg", "Added Successfully");
				  
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




	