package master;
import java.sql.Connection;
 import java.sql.ResultSet;
import java.sql.Statement;

import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import generatedclass.connectionclass;

public class updatestock extends ActionSupport {
	private static final long serialVersionUID = 1L;
	public String stockId;	
	private String BillNo;
	private String date;
	private String FirstName;
	private String LastName;
	private String Product;
	private String PurchaseTax;
	/*
	 * private String instock; public String getInstock() { return instock; } public
	 * void setInstock(String instock) { this.instock = instock; }
	 */




	
	public String getPurchaseTax() {
		return PurchaseTax;
	}
	public void setPurchaseTax(String purchaseTax) {
		PurchaseTax = purchaseTax;
	}



	private String quantity;
	private String cost;
	public String getstockId() {
		return stockId;
	}
	public void setstockId(String stockId) {
		this.stockId = stockId;
	}
	public String getBillNo() {
		return BillNo;
	}
	public void setBillNo(String billNo) {
		BillNo = billNo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public String getProduct() {
		return Product;
	}
	public void setProduct(String product) {
		Product = product;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	
	
	
	public String ret="error";
	public String execute() {
		System.out.println("in execute update stock...");
		
	// new connectionClass();
	// Connection con1 = connectionclass.getConnection();
	Connection con1=new connectionclass().getConnection();
	
	String query = "UPDATE stock SET FirstName=?, date=?,Product=?, quantity=?, cost=?,PurchaseTax=? WHERE id='"+stockId+"'";
	System.out.println("Sql..........."+query);
	 
	try  {
		 PreparedStatement pst = con1.prepareStatement(query);
		 pst.setString(1, FirstName);
		  pst.setString(2, date);
		  pst.setString(3, Product);
		  pst.setString(4, quantity);
		  pst.setString(5,cost);
		  pst.setString(6,PurchaseTax);
			
		  
			
		 /* pst.setString(8, stockId);*/
		  
		  pst.executeUpdate();
		  int id=0;
		  int i=0;
		  try{
			  
              Connection con13=new connectionclass().getConnection();
              Statement  smt13=con13.createStatement();
              String sql13 = "select * from product where Name ='"+Product+"'";
              System.out.println("sql13 "+sql13);
              ResultSet rs13= smt13.executeQuery(sql13);
              while(rs13.next())
              { 
           	i= Integer.parseInt(  rs13.getString("Quantity"));
           	id= Integer.parseInt(  rs13.getString("Id"));
          }
              System.out.println(i);
              
              rs13.close();
              smt13.close();
              con13.close();
              } catch(Exception e){
           	   e.printStackTrace();
              }
             int total=i+Integer.parseInt(quantity);
             System.out.println(total);
             String query1 = "UPDATE product SET Quantity=?,PurchasePrice=?,PurchaseTax=? WHERE id='"+id+"'";
         	
         	System.out.println("Sql..........."+query);
         							try {
         									
         									PreparedStatement pst1=con1.prepareStatement(query1);
         									  pst1.setInt(1,total );
         									  pst1.setString(2,cost);
         					        		  pst1.setString(3, "PurchaseTax");
         					        		 
         										/* pst.setString(12, prodtId); */
         					        				 
         					        		 
                                                 pst1.executeUpdate();
         							}catch(Exception e) {
         								
         							}
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

