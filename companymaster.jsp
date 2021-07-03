<%-- <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="generatedclass.connectionclass"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inventory</title>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

       <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="mycss/normalize.css">
    <link rel="stylesheet" href="mycss/bootstrap.min.css">
    <link rel="stylesheet" href="mycss/font-awesome.min.css">
   <link rel="stylesheet" href="mycss/themify-icons.css">
    <link rel="stylesheet" href="mycss/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="mycss/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
  
     <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
     
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
       
   <script type="text/javascript">   
        function deleteScheme(val)
        {
        	var a=val;
        	//alert(a);
        	
        	$("#compId_d").val(a);
        	$("#myModalDelete").modal();
        }
        
       
        </script>
         <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 2px;
 
  text-align: center;  
  
}
</style>
    </head>
    <body>

        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">

                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">

  <li class="menu-title">Inventory Management</li>     
       <!-- /.menu-title --> <li class="active">
                        <a href="dashboard">Dashboard </a>
                    </li>
                       
                        <li class="menu-item-has-children active dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                                <b>Master</b></a>
                            <ul class="sub-menu children ">
                            <li><a href="companymaster">Company master</a></li>  <!--dropdown-menu  -->
                                 <li><a href="vendor">Vendor</a></li>
                                <li><a href="customer">Customer</a></li>
                                <li><a href="product">Products</a></li>
                              <li><a href="taxmaster">Tax master</a></li>
                              
                              
                            
                                
                                 
                                 </ul>
                                   </li>
                                 <li class="menu-item-has-children active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  </i>
                                  <b>Stock</b></a>
                                  <ul class="sub-menu children ">
                                  <li><a href="stock">Stock</a></li>
                                   <li><a href="stockreport">Stock Report</a></li>
                                  </ul>
                                 
                                 </li>
                                 <li class="menu-item-has-children active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  </i><b>Sales</b></a>
                                  <ul class="sub-menu children ">
                                  <li><a href="sales">Sales</a></li>
                                  </ul>
                                 
                                 </li>
                                 <li class="menu-item-has-children active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                                  <b>Employee</b></a>
                                  <ul class="sub-menu children ">
                                   <li><a href="employee">Employee</a></li>
                                    <li><a href="attendance">Attendance</a></li></ul>
                                 
                             <li class="menu-item-has-children active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  <b>Reports</b></a>
                                  <ul class="sub-menu children ">
                                  <li><a href="Product Report">Product </a></li>
                                  <li><a href="company report">Company</a></li>
                                  <li><a href="vendor report">Vendor</a></li>
                                 <li><a href="attendance report">Attendance </a></li>
                                 <li><a href="sales report">Sales </a></li>
                                  <li><a href="customer report">Customer </a></li>
                                  <li><a href="employee report">Employee </a></li>
                                  </ul>
                                  </li>
          <!--  <li class="menu-item-has-children active dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-cogs">
                                </i>Reports</a>
                                <li><i class="fa fa-bars"></i><a href="Product Report">Product Report</a></li>
                            <ul class="sub-menu children ">
                            </ul>
                        </li> -->
                    </ul>

                </div><!-- /.navbar-collapse -->
            </nav>
        </aside>

        <div id="right-panel" class="right-panel">

            <header id="header" class="header">
                <div class="top-left">
                    <div class="navbar-header">
                        <!-- <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a> -->
                        <a class="navbar-brand" href="./">Inventory System</a>
                        <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                    </div>
                </div>
                <div class="top-right">
                    <div class="header-menu">
                        <div class="header-left">
                            
                            <div class="form-inline">
                                <form class="search-form">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                  
                                </form>
                            </div>

                            <div class="dropdown for-notification">
                               
                                <div class="dropdown-menu" aria-labelledby="notification">
                                    <p class="red">You have 3 Notification</p>
                                    <a class="dropdown-item media" href="#">
                                        <i class="fa fa-check"></i>
                                        <p>Server #1 overloaded.</p>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <i class="fa fa-info"></i>
                                        <p>Server #2 overloaded.</p>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <i class="fa fa-warning"></i>
                                        <p>Server #3 overloaded.</p>
                                    </a>
                                </div>
                            </div>

                            <div class="dropdown for-message">
                               
                                <div class="dropdown-menu" aria-labelledby="message">
                                    
                                    <a class="dropdown-item media" href="#">
                                        
                                        <div class="message media-body">
                                            
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>

                         <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="images/logout.jpg" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">
                                
                                <a class="nav-link" href="homepage"><i class="fa fa-cog"></i>Log Out</a>
                                 
                          
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div class="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="row m-0">
                        <div class="col-sm-4">
                            <div class="page-header float-left">
                                <div class="page-title">
                                    <h1></h1>
                                </div>
                            </div>
                        </div>
                         <div class="col-sm-8">
                            <div class="page-header float-right">
                                <div class="page-title">
                                    <ol class="breadcrumb text-right">
                                        
                                        <li><a href="#">
                                         <button type="button" id="addNewButton" class=" btn btn-secondary btn-sm">Add New </button>
                                <button type="button" id="showTableButton" class="btn btn btn-secondary btn-sm">Show Table</button> 
                                        </a></li>
                                        
                                    </ol>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
</div>
            <div class="content">
                <div class="animated fadeIn">
                
                    <div class="col-lg-12">
                        <div class="card border border-secondary">
                            <div class="card-header"><strong>Company Master</strong><strong> Form</strong>
                                <!-- <button type="button" id="addNewButton" class="btn ">Add New</button>
                                <button type="button" id="showTableButton" class="btn">Show Table</button> -->
                            </div>
                             <!-- Start Struts Validation -->
			 
										 <s:if test="hasActionErrors()">
											<div class="errorDiv">
												<div class="alert alert-error has-error" role="alert">
													<s:actionerror/>
												</div>
											</div>
										</s:if>
										
										<%if(request.getSession().getAttribute("successmsg")!=null){ %>
										<div class="welcome">
										  <div class="alert alert-success has-success" role="alert">
										 <%=request.getSession().getAttribute("successmsg")%>
										  </div>
										  </div>
										<%request.getSession().removeAttribute("successmsg"); } %>
										
				<!-- End Struts Validation -->

                            <div class="card-body card-block">
                                <div id="addNewForm">
                                 <form role="form" action="companymasterInsert" method="post">
                                <div class="form-group"> 
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="company" class=" form-control-label">Company Name</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Company"  required></div>
                                        <div class="col-lg-6">
                                            <label for="company" class=" form-control-label">Contact no.1</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Contact1" maxlength="10" required >
                                        </div></div><br>  
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="company address" class=" form-control-label">Company Address</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Address"></div>
                                            <div class="col-lg-6">
                                                <label for="company" class=" form-control-label">Contact no.2</label>
                                                <input type="text" id="company" placeholder="" class="form-control" name="Contact2" maxlength="10">
                                            </div></div></div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="Country" class=" form-control-label">Country</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Country"></div>
                                            <div class="col-lg-6">
                                                <label>State</label>
                                                <select class="form-control"  name="State">
                                                    <option value="">------------Select State------------</option>
                                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>
                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>
                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Orissa">Orissa</option>
                                                    <option value="Pondicherry">Pondicherry</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttaranchal">Uttaranchal</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>
                                            </div></div></div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="city" class=" form-control-label">City</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="City"></div>
                                            <div class="col-lg-6">
                                                <label for="street" class=" form-control-label">Postal Code</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="Postalcode"></div>
                                        </div></div></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="email id" class=" form-control-label">Email Id</label>
                                            <input type="email" id="street" placeholder="" class="form-control" name="EmailId"></div>
                                        <div class="col-lg-6">
                                            <label for="company website" class=" form-control-label">Company Website</label>
                                            <input type="text" id="street" placeholder="" class="form-control" name="CompanyWebsite"></div>
                                    </div></div>


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="Registration no" class=" form-control-label">Registration no</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="RegistrationNo"></div>
                                        <div class="col-lg-6">
                                            <label for="Bank Name" class=" form-control-label">Bank Name</label>
                                            <input type="text" id="bank name" placeholder="" class="form-control" name="BankName"></div>
                                    </div></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="GST No" class=" form-control-label">GST  No</label>
                                            <input type="text" id="gst no" placeholder="" class="form-control" name="GSTno"></div>
                                        <div class="col-lg-6">
                                            <label for="Account NO" class=" form-control-label">Account No</label>
                                            <input type="text" id="account no" placeholder="" class="form-control" name="Accountno"></div>
                                    </div></div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="PAN No" class=" form-control-label">PAN No</label>
                                            <input type="text" id="PAN No" placeholder="" class="form-control" name="PANno"></div> 
                                        <div class="col-lg-6">
                                            <label for="IFSC Code" class=" form-control-label">IFSC Code</label>
                                            <input type="text" id="account no" placeholder="" class="form-control" name="IFSCcode"></div>
                                    </div></div>  


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="PAN No" class=" form-control-label">From financial year</label>
                                            <input type="text" id="PAN No" placeholder="" class="form-control" name="StartFinancialyear"></div> 
                                        <div class="col-lg-6">
                                            <label for="IFSC Code" class=" form-control-label">To financial year</label>
                                            <input type="text" id="account no" placeholder="" class="form-control" name="EndFinancialyear"></div>
                                    </div></div>                   



                                <div align="center">
                                    <button type="submit" class="btn btn-primary mb-1" >Submit</button>
                                    

                                </div>
							</form>
                            </div>
                            </div>
                           
                           
                           
                                                                <%
                                            String id1=request.getParameter("id");
                                            if(id1!=null){
                                            %>
                                            
                                            
                        <!-- for update  -->
                         <div class="card-body card-block ">
                            <%
                 try{
                                Connection con1=new connectionclass().getConnection();
                        		Statement stm=con1.createStatement();
                        		String sql="select * from company_master where id= '"+id1+ "'";
                        		ResultSet rs=stm.executeQuery(sql);
                        		while(rs.next()){
                        			
                 %>
              
                          
                 <form action="companymasterUpdate" method="post">
                 
              
             
             <%System.out.println(id1); %>
                    <input type="hidden" value="<%=id1%>" name="compId">
                    
           <div class="row">
            <div class="col-sm-6">
                 <div class="form-group"> 
                                    
                                       
                                            <label for="company" class=" form-control-label">Company Name</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Company" value="<%=rs.getString("Company") %>">
                                            </div>
                                            </div>
                                        <div class="col-sm-6">
                                        <div class="form-group"> 
                                            <label for="company" class=" form-control-label">Contact no.1</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Contact1" maxlength="10" value="<%=rs.getString("Contact1") %>">
                                        </div></div>
                                        </div> 
                                        
                                         <div class="row">
                                    
                                       
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="company address" class=" form-control-label">Company Address</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Address" value="<%=rs.getString("Address") %>">
                                                </div>
                                                </div>
                                            <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="company" class=" form-control-label">Contact no.2</label>
                                                <input type="text" id="company" placeholder="" class="form-control" name="Contact2" maxlength="10" value="<%=rs.getString("Contact2") %>">
                                            </div></div></div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="Country" class=" form-control-label">Country</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Country" value="<%=rs.getString("Country") %>"></div>
                                            <div class="col-md-6">
                                                <label>State</label>
                                                <select class="form-control"  name="State" >
                                                    <option value="<%=rs.getString("State") %>"><%=rs.getString("State") %></option>
                								 <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>
                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>
                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Orissa">Orissa</option>
                                                    <option value="Pondicherry">Pondicherry</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttaranchal">Uttaranchal</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>
                                            </div></div></div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="city" class=" form-control-label">City</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="City" value="<%=rs.getString("City") %>"></div>
                                            <div class="col-md-6">
                                                <label for="street" class=" form-control-label">Postal Code</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="Postalcode" value="<%=rs.getString("Postalcode") %>"></div>
                                        </div></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="email id" class=" form-control-label">Email Id</label>
                                            <input type="email" id="street" placeholder="" class="form-control" name="EmailId" value="<%=rs.getString("EmailId") %>"></div>
                                        <div class="col-md-6">
                                            <label for="company website" class=" form-control-label">Company Website</label>
                                            <input type="text" id="street" placeholder="" class="form-control" name="CompanyWebsite" value="<%=rs.getString("CompanyWebsite") %>"></div>
                                    </div></div>


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="Registration no" class=" form-control-label">Registration no</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="RegistrationNo" value="<%=rs.getString("RegistrationNo") %>"></div>
                                        <div class="col-md-6">
                                            <label for="Bank Name" class=" form-control-label">Bank Name</label>
                                            <input type="text" id="bank name"  class="form-control" name="BankName" value="<%=rs.getString("BankName") %>"></div>
                                    </div></div>
                                      <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="GST No" class=" form-control-label">GST No</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="GSTno" value="<%=rs.getString("GSTno") %>"></div>
                                        <div class="col-md-6">
                                            <label for="Account No" class=" form-control-label">Account No</label>
                                            <input type="text" id="bank name"  class="form-control" name="Accountno" value="<%=rs.getString("Accountno") %>"></div>
                                    </div></div>
                                      <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="PAN No" class=" form-control-label">PAN No</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="PANno" value="<%=rs.getString("PANno") %>"></div>
                                        <div class="col-md-6">
                                            <label for="IFSC Code" class=" form-control-label">IFSC Code</label>
                                            <input type="text" id="bank name"  class="form-control" name="IFSCcode" value="<%=rs.getString("IFSCcode") %>"></div>
                                    </div></div>
                                     <div class="row">
                                        <div class="col-md-6">
                                            <label for="StartFinancialyeaR" class=" form-control-label">StartFinancialyear</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="StartFinancialyear" value="<%=rs.getString("StartFinancialyear") %>"></div>
                                        <div class="col-md-6">
                                            <label for="EndFinancialyear" class=" form-control-label">EndFinancialyear</label>
                                            <input type="text" id="bank name"  class="form-control" name="EndFinancialyear" value="<%=rs.getString("EndFinancialyear") %>"></div>
                                    </div></div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    


               			 <div class="row">
                                      <div class="col-md-12">          
                         <button type="submit" class="btn btn-primary">Submit</button>
                         <button type="reset" class="btn btn-primary">Reset</button>
                           </div>
                           </div>
                           
                            </form>
                           <%
                           		} // end of while
                           			
                           			rs.close();
                           		    stm.close();
                           		    con1.close();
                 }catch(Exception e){
                	 e.printStackTrace();
                 }
                              
                           %>
                            
                        
                       
                         </div>
                                 
                                </div>  
                          <% 
                                            }  // end of if
                          %>       
                                 





                            <div class="card-body card-block">
                                <div id="showTable">
                                <div class="table-responsive">
                                    
                                   
                                    
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered table style="width:100%"">
                                        <thead>
                                            <tr>
                                                <th>Sr.no</th>
                                                <th>Name</th>
                                                <th>Contact no.1</th>
                                                <th>Contact no.2</th>
                                                <th>Address</th>
                                                <th>Website</th>
                                                <th>EmailID</th>
                                                <th colspan="2">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <%
                                                                                           int i=1;
                                                                                           try{
                                                                                           Connection con=new connectionclass().getConnection();
                                                                                           Statement smt=con.createStatement();
                                                                                           String sql = "select * from company_master";
                                                                                           ResultSet rs= smt.executeQuery(sql);
                                                                                           while(rs.next()){                                  		

                                                                                           %>
                                            <tr>
                                               
                                           


   																									 <td><%=i%><input type="hidden" id="id" value="<%rs.getString("id");%>"> </td>                         
                                                                                                <td id="Company_<%rs.getString("id");%>"><%=rs.getString("Company") %></td>
                                                                                                <td id="Contact1_<%rs.getString("id");%>"><%=rs.getString("Contact1") %></td>
                                                                                                <td id="Contact2_<%rs.getString("id");%>"><%=rs.getString("Contact2") %></td>
                                                                                                <td id="Address_<%rs.getString("id");%>"><%=rs.getString("Address") %></td>
                                                                                                <td id="CompanyWebsite_<%rs.getString("id");%>"><%=rs.getString("CompanyWebsite") %></td>
                                                                                              <td id="EmailId_<%rs.getString("id");%>"><%=rs.getString("EmailId") %></td>
                                                                                               
                                                                                                 <td>   <a href="companymaster?id=<%=rs.getString("id")%>"class="btn btn-success btn-sm">Update</a>  </td>
                            				                                                  <td>     <a onclick="deleteScheme(<%=rs.getString("id")%>)" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete">Delete</a>
                                                                                                </td>
 																								</tr>
																						   <%
                                                                                               i++;
                                                                                               }  //end of while

                                                                                               rs.close();
                                                                                               smt.close();
                                                                                               con.close();

                                                                                               } catch(Exception e){
                                                                                               e.printStackTrace();

                                                                                               }
                                                                                               %>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        


        <div class="clearfix"></div>




        <footer class="site-footer">
            <div class="footer-inner bg-white">


            </div>

        </footer>
		
                                   <script>
                                      
                                      
                                        /*  addNewForm1 */
                                        $(document).ready(function() {
                                            $("#addNewButton").show();
                                            $("#showTable").show();
                                            $("#addNewForm").hide();
                                            $("#showTableButton").hide();
                                            /*   $("#addNewForm1").hide(); */

                                            $("#addNewButton").click(function() {
                                                $("#addNewButton").hide();
                                                $("#showTable").hide();
                                                $("#addNewForm").show();
                                                $("#showTableButton").show();
                                                /*   $("#addNewForm1").hide(); */
                                            });
                                            $("#showTableButton").click(function() {
                                                $("#addNewButton").show();
                                                $("#showTable").show();
                                                $("#addNewForm").hide();
                                                $("#showTableButton").hide();
                                                /*  $("#addNewForm1").hide(); */
                                            });
                                        });

                                    </script>
                                    
         
		  
		   
           <!-- Delete Modal -->
		  <div class="modal fade" id="myModalDelete" role="dialog">
		    <div class="modal-dialog">
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title" style="text-align: center">Delete Under Company</h4>
		        </div>
		        <form action="companymasterDelete" method="POST">
		        <div class="modal-body">
		          
		          
		          	<input type="hidden" id="compId_d" name="compId">
		          	
				    <div class="form-group">
				      <label>Do you want to delete</label>
				     
				    </div>
				  
				  
		        </div>
		        <div class="modal-footer">
		          <button type="submit" class="btn btn-primary btn-sm"  >Delete</button>
		          <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" >Close</button>
		        </div>
		        </form>
		      </div>
		      
		    </div>
		  </div>

 
<!-- Scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.matchHeight.min.js"></script>
    

    <script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="assets/js/init/datatables-init.js"></script>
	<script src="assets/js/main.js"></script>

 
    </body>
</html> --%>



 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="generatedclass.connectionclass"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Inventory</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="AdminLTE-3.1.0/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="AdminLTE-3.1.0/dist/css/adminlte.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script type="text/javascript">   
        function deleteScheme(val)
        {
        	var a=val;
        	//alert(a);
        	
        	$("#compId_d").val(a);
        	$("#myModalDelete").modal();
        }
        
       
        </script>
         <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 2px;
 
  text-align: center;  
  
}
</style>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
   <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="homepage" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="dashboard" class="nav-link">Dashboard</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="AdminLTE-3.1.0/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Inventory</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       <!--  <div class="image">
          <img src="AdminLTE-3.1.0/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div> -->
        <div class="info">
          <a href="#" class="d-block"></a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
             
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="dashboard" class="nav-link active">
                  <i class="nav-icon far fa-circle text-info"></i>
                  <p>Dashboard </p>
                </a>
              </li>
             <!--  <li class="nav-item">
                <a href="./index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li> -->
            </ul>
          </li>
         <!--  <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Widgets
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Layout Options
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">6</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation + Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/boxed.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Boxed</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar-custom.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar <small>+ Custom Area</small></p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-topnav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Navbar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-footer.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Footer</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/collapsed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Collapsed Sidebar</p>
                </a>
              </li>
            </ul>
          </li> -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
                Master
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="companymaster" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Company Master</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="vendor" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Vendor</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="customer" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Customer</p>
                </a>
              </li>
                <li class="nav-item">
                <a href="product" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Products</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="taxmaster" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tax </p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
               Stock
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="stock" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Stock</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="stockreport" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Report</p>
                </a>
              </li>
           <!--    <li class="nav-item">
                <a href="pages/UI/buttons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Buttons</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/sliders.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sliders</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/modals.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Modals & Alerts</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/navbar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Navbar & Tabs</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/timeline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Timeline</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ribbons</p>
                </a>
              </li>-->
            </ul>
          </li> 
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
               Sales
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="sales" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Orders</p>
                </a>
              </li>
              <!-- <li class="nav-item">
                <a href="pages/forms/advanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Advanced Elements</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/editors.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Editors</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Validation</p>
                </a>
              </li> -->
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
              Employee
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="employee" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Employee</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="attendance" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Attendance</p>
                </a>
              </li>
             <!--  <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>jsGrid</p>
                </a>
              </li> -->
            </ul>
          </li>
            <li class="nav-item">
            <a href="#" class="nav-link">
              <i class=" nav-icon far fa-circle text-info"></i>
              <p>
             Reports
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="sales report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sales Report</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="Product Report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Product Report </p>
                </a>
              </li>
               <li class="nav-item">
                <a href="customer report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Customer Report</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="vendor report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Vendor Report</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="company report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Company Report</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="employee report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Employee Report</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="attendance report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Attendance Reportt</p>
                </a>
              </li>
             <!--  <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>jsGrid</p>
                </a>
              </li> -->
            </ul>
          </li>
           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
            Visit
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="homepage" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Homepage</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="login" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Logout</p>
                </a>
              </li>
             
          </li> 
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
             
              <li class="breadcrumb-item active">
               <button type="button" id="addNewButton" class=" btn btn-secondary btn-sm">Add New </button>
              <button type="button" id="showTableButton" class="btn btn btn-secondary btn-sm">Show Table</button> 
              </li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
           <div class="col-lg-12">
                        <div class="card card-primary">
                            <div class="card-header"><strong>Company Master</strong><strong> Form</strong>
                                <!-- <button type="button" id="addNewButton" class="btn ">Add New</button>
                                <button type="button" id="showTableButton" class="btn">Show Table</button> -->
                            </div>
                             <!-- Start Struts Validation -->
			 
										 <s:if test="hasActionErrors()">
											<div class="errorDiv">
												<div class="alert alert-error has-error" role="alert">
													<s:actionerror/>
												</div>
											</div>
										</s:if>
										
										<%if(request.getSession().getAttribute("successmsg")!=null){ %>
										<div class="welcome">
										  <div class="btn btn-default swalDefaultQuestion" role="alert">
										 <%=request.getSession().getAttribute("successmsg")%>
										  </div>
										  </div>
										<%request.getSession().removeAttribute("successmsg"); } %>
										
				<!-- End Struts Validation -->

                            <div class="card-body card-block">
                                <div id="addNewForm">
                                 <form role="form" action="companymasterInsert" method="post">
                                <div class="form-group"> 
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="company" class=" form-control-label">Company Name</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Company"  required></div>
                                        <div class="col-lg-6">
                                            <label for="company" class=" form-control-label">Contact no.1</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Contact1" maxlength="10" required >
                                        </div></div><br>  
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="company address" class=" form-control-label">Company Address</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Address"></div>
                                            <div class="col-lg-6">
                                                <label for="company" class=" form-control-label">Contact no.2</label>
                                                <input type="text" id="company" placeholder="" class="form-control" name="Contact2" maxlength="10">
                                            </div></div></div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="Country" class=" form-control-label">Country</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Country"></div>
                                            <div class="col-lg-6">
                                                <label>State</label>
                                                <select class="form-control"  name="State">
                                                    <option value="">------------Select State------------</option>
                                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>
                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>
                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Orissa">Orissa</option>
                                                    <option value="Pondicherry">Pondicherry</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttaranchal">Uttaranchal</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>
                                            </div></div></div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="city" class=" form-control-label">City</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="City"></div>
                                            <div class="col-lg-6">
                                                <label for="street" class=" form-control-label">Postal Code</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="Postalcode"></div>
                                        </div></div></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="email id" class=" form-control-label">Email Id</label>
                                            <input type="email" id="street" placeholder="" class="form-control" name="EmailId"></div>
                                        <div class="col-lg-6">
                                            <label for="company website" class=" form-control-label">Company Website</label>
                                            <input type="text" id="street" placeholder="" class="form-control" name="CompanyWebsite"></div>
                                    </div></div>


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="Registration no" class=" form-control-label">Registration no</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="RegistrationNo"></div>
                                        <div class="col-lg-6">
                                            <label for="Bank Name" class=" form-control-label">Bank Name</label>
                                            <input type="text" id="bank name" placeholder="" class="form-control" name="BankName"></div>
                                    </div></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="GST No" class=" form-control-label">GST  No</label>
                                            <input type="text" id="gst no" placeholder="" class="form-control" name="GSTno"></div>
                                        <div class="col-lg-6">
                                            <label for="Account NO" class=" form-control-label">Account No</label>
                                            <input type="text" id="account no" placeholder="" class="form-control" name="Accountno"></div>
                                    </div></div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="PAN No" class=" form-control-label">PAN No</label>
                                            <input type="text" id="PAN No" placeholder="" class="form-control" name="PANno"></div> 
                                        <div class="col-lg-6">
                                            <label for="IFSC Code" class=" form-control-label">IFSC Code</label>
                                            <input type="text" id="account no" placeholder="" class="form-control" name="IFSCcode"></div>
                                    </div></div>  


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="PAN No" class=" form-control-label">From financial year</label>
                                            <input type="text" id="PAN No" placeholder="" class="form-control" name="StartFinancialyear"></div> 
                                        <div class="col-lg-6">
                                            <label for="IFSC Code" class=" form-control-label">To financial year</label>
                                            <input type="text" id="account no" placeholder="" class="form-control" name="EndFinancialyear"></div>
                                    </div></div>                   



                                <div align="center">
                                    <button type="submit" class="btn btn-primary mb-1" >Submit</button>
                                    

                                </div>
							</form>
                            </div>
                            </div>
                           
                           
                           
                                                                <%
                                            String id1=request.getParameter("id");
                                            if(id1!=null){
                                            %>
                                            
                                            
                        <!-- for update  -->
                         <div class="card-body card-block ">
                            <%
                 try{
                                Connection con1=new connectionclass().getConnection();
                        		Statement stm=con1.createStatement();
                        		String sql="select * from company_master where id= '"+id1+ "'";
                        		ResultSet rs=stm.executeQuery(sql);
                        		while(rs.next()){
                        			
                 %>
              
                          
                 <form action="companymasterUpdate" method="post">
                 
              
             
             <%System.out.println(id1); %>
                    <input type="hidden" value="<%=id1%>" name="compId">
                    
           <div class="row">
            <div class="col-sm-6">
                 <div class="form-group"> 
                                    
                                       
                                            <label for="company" class=" form-control-label">Company Name</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Company" value="<%=rs.getString("Company") %>">
                                            </div>
                                            </div>
                                        <div class="col-sm-6">
                                        <div class="form-group"> 
                                            <label for="company" class=" form-control-label">Contact no.1</label>
                                            <input type="text" id="company" placeholder="" class="form-control" name="Contact1" maxlength="10" value="<%=rs.getString("Contact1") %>">
                                        </div></div>
                                        </div> 
                                        
                                         <div class="row">
                                    
                                       
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="company address" class=" form-control-label">Company Address</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Address" value="<%=rs.getString("Address") %>">
                                                </div>
                                                </div>
                                            <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="company" class=" form-control-label">Contact no.2</label>
                                                <input type="text" id="company" placeholder="" class="form-control" name="Contact2" maxlength="10" value="<%=rs.getString("Contact2") %>">
                                            </div></div></div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="Country" class=" form-control-label">Country</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Country" value="<%=rs.getString("Country") %>"></div>
                                            <div class="col-md-6">
                                                <label>State</label>
                                                <select class="form-control"  name="State" >
                                                    <option value="<%=rs.getString("State") %>"><%=rs.getString("State") %></option>
                								 <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>
                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>
                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Orissa">Orissa</option>
                                                    <option value="Pondicherry">Pondicherry</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttaranchal">Uttaranchal</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>
                                            </div></div></div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="city" class=" form-control-label">City</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="City" value="<%=rs.getString("City") %>"></div>
                                            <div class="col-md-6">
                                                <label for="street" class=" form-control-label">Postal Code</label>
                                                <input type="text" id="street" placeholder="" class="form-control" name="Postalcode" value="<%=rs.getString("Postalcode") %>"></div>
                                        </div></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="email id" class=" form-control-label">Email Id</label>
                                            <input type="email" id="street" placeholder="" class="form-control" name="EmailId" value="<%=rs.getString("EmailId") %>"></div>
                                        <div class="col-md-6">
                                            <label for="company website" class=" form-control-label">Company Website</label>
                                            <input type="text" id="street" placeholder="" class="form-control" name="CompanyWebsite" value="<%=rs.getString("CompanyWebsite") %>"></div>
                                    </div></div>


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="Registration no" class=" form-control-label">Registration no</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="RegistrationNo" value="<%=rs.getString("RegistrationNo") %>"></div>
                                        <div class="col-md-6">
                                            <label for="Bank Name" class=" form-control-label">Bank Name</label>
                                            <input type="text" id="bank name"  class="form-control" name="BankName" value="<%=rs.getString("BankName") %>"></div>
                                    </div></div>
                                      <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="GST No" class=" form-control-label">GST No</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="GSTno" value="<%=rs.getString("GSTno") %>"></div>
                                        <div class="col-md-6">
                                            <label for="Account No" class=" form-control-label">Account No</label>
                                            <input type="text" id="bank name"  class="form-control" name="Accountno" value="<%=rs.getString("Accountno") %>"></div>
                                    </div></div>
                                      <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="PAN No" class=" form-control-label">PAN No</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="PANno" value="<%=rs.getString("PANno") %>"></div>
                                        <div class="col-md-6">
                                            <label for="IFSC Code" class=" form-control-label">IFSC Code</label>
                                            <input type="text" id="bank name"  class="form-control" name="IFSCcode" value="<%=rs.getString("IFSCcode") %>"></div>
                                    </div></div>
                                     <div class="row">
                                        <div class="col-md-6">
                                            <label for="StartFinancialyeaR" class=" form-control-label">StartFinancialyear</label>
                                            <input type="text" id="registration no" placeholder="" class="form-control" name="StartFinancialyear" value="<%=rs.getString("StartFinancialyear") %>"></div>
                                        <div class="col-md-6">
                                            <label for="EndFinancialyear" class=" form-control-label">EndFinancialyear</label>
                                            <input type="text" id="bank name"  class="form-control" name="EndFinancialyear" value="<%=rs.getString("EndFinancialyear") %>"></div>
                                    </div></div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    


               			 <div class="row">
                                      <div class="col-md-12">          
                         <button type="submit" class="btn btn-primary">Submit</button>
                         <button type="reset" class="btn btn-primary">Reset</button>
                           </div>
                           </div>
                           
                            </form>
                           <%
                           		} // end of while
                           			
                           			rs.close();
                           		    stm.close();
                           		    con1.close();
                 }catch(Exception e){
                	 e.printStackTrace();
                 }
                              
                           %>
                            
                        
                       
                         </div>
                                 
                                </div>  
           <% 
                                            }  // end of if
                          %>       
                                 
          
          
          
          
          
          
           <div class="card-body card-block">
                                <div id="showTable">
                                <div class="table-responsive">
                                    
                                   
                                    
                                    <table id="bootstrap-data-table" class=" table table-bordered table style="width:100%"">
                                        <thead>
                                            <tr>
                                                <th>Sr.no</th>
                                                <th>Name</th>
                                                <th>Contact no.1</th>
                                                <th>Contact no.2</th>
                                                <th>Address</th>
                                                <th>Website</th>
                                                <th>EmailID</th>
                                                <th colspan="2">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <%
                                                                                           int i=1;
                                                                                           try{
                                                                                           Connection con=new connectionclass().getConnection();
                                                                                           Statement smt=con.createStatement();
                                                                                           String sql = "select * from company_master";
                                                                                           ResultSet rs= smt.executeQuery(sql);
                                                                                           while(rs.next()){                                  		

                                                                                           %>
                                            <tr>
                                               
                                           


   																									 <td><%=i%><input type="hidden" id="id" value="<%rs.getString("id");%>"> </td>                         
                                                                                                <td id="Company_<%rs.getString("id");%>"><%=rs.getString("Company") %></td>
                                                                                                <td id="Contact1_<%rs.getString("id");%>"><%=rs.getString("Contact1") %></td>
                                                                                                <td id="Contact2_<%rs.getString("id");%>"><%=rs.getString("Contact2") %></td>
                                                                                                <td id="Address_<%rs.getString("id");%>"><%=rs.getString("Address") %></td>
                                                                                                <td id="CompanyWebsite_<%rs.getString("id");%>"><%=rs.getString("CompanyWebsite") %></td>
                                                                                              <td id="EmailId_<%rs.getString("id");%>"><%=rs.getString("EmailId") %></td>
                                                                                               
                                                                                                 <td>   <a href="companymaster?id=<%=rs.getString("id")%>"class="btn btn-success btn-sm">Update</a>  </td>
                            				                                                  <td>     <a onclick="deleteScheme(<%=rs.getString("id")%>)" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete">Delete</a>
                                                                                                </td>
 																								</tr>
																						   <%
                                                                                               i++;
                                                                                               }  //end of while

                                                                                               rs.close();
                                                                                               smt.close();
                                                                                               con.close();

                                                                                               } catch(Exception e){
                                                                                               e.printStackTrace();

                                                                                               }
                                                                                               %>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            </div>
          
          
          
          
          
               <script>
                                      
                                      
                                        /*  addNewForm1 */
                                        $(document).ready(function() {
                                            $("#addNewButton").show();
                                            $("#showTable").show();
                                            $("#addNewForm").hide();
                                            $("#showTableButton").hide();
                                            /*   $("#addNewForm1").hide(); */

                                            $("#addNewButton").click(function() {
                                                $("#addNewButton").hide();
                                                $("#showTable").hide();
                                                $("#addNewForm").show();
                                                $("#showTableButton").show();
                                                /*   $("#addNewForm1").hide(); */
                                            });
                                            $("#showTableButton").click(function() {
                                                $("#addNewButton").show();
                                                $("#showTable").show();
                                                $("#addNewForm").hide();
                                                $("#showTableButton").hide();
                                                /*  $("#addNewForm1").hide(); */
                                            });
                                        });

                                    </script>
          
          
          
          
          	  <div class="modal fade" id="myModalDelete" role="dialog">
		    <div class="modal-dialog">
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		         
		          <h4 class="modal-title" style="text-align: right">Delete Under Company</h4>
		        </div>
		        <form action="companymasterDelete" method="POST">
		        <div class="modal-body">
		          
		          
		          	<input type="hidden" id="compId_d" name="compId">
		          	
				    <div class="form-group">
				      <label>Do you want to delete</label>
				     
				    </div>
				  
				  
		        </div>
		        <div class="modal-footer">
		          <button type="submit" class="btn btn-primary btn-sm"  >Delete</button>
		          <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" >Close</button>
		        </div>
		        </form>
		      </div>
		      
		    </div>
		  </div>
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          <!--/.col (left) -->
          <!-- right column -->
         
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="AdminLTE-3.1.0/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="AdminLTE-3.1.0/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="AdminLTE-3.1.0/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="AdminLTE-3.1.0/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="AdminLTE-3.1.0/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>
 