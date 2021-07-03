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
         
        
        

       <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

     
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="mycss/bootstrap.css">
	<link rel="stylesheet" href="mycss/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="mycss/buttons.bootstrap4.min.css">
	<link rel="stylesheet" href="mycss/responsive.bootstrap4.min.css">
  
    
    </head>
    <body>
    
        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">

                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
  <li class="menu-title">Inventory Management</li>          <!-- /.menu-title -->
   <li class="active">
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
                                   </li><li class="menu-item-has-children active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  </i><b>Sales</b></a>
                                  <ul class="sub-menu children ">
                                  <li><a href="sales">Sales</a></li>
                                  </ul>
                                 
                                 </li><li class="menu-item-has-children active dropdown">
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
                                    <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
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
                                    <p class="red">You have 4 Mails</p>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="images/avatar/1.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Jonathan Smith</span>
                                            <span class="time float-right">Just now</span>
                                            <p>Hello, this is an example msg</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="images/avatar/2.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Jack Sanders</span>
                                            <span class="time float-right">5 minutes ago</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="images/avatar/3.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Cheryl Wheeler</span>
                                            <span class="time float-right">10 minutes ago</span>
                                            <p>Hello, this is an example msg</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item media" href="#">
                                        <span class="photo media-left"><img alt="avatar" src="images/avatar/4.jpg"></span>
                                        <div class="message media-body">
                                            <span class="name float-left">Rachel Santos</span>
                                            <span class="time float-right">15 minutes ago</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
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
                                
                                <a class="nav-link" href="login"><i class="fa fa-power-off"></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

<!--             <div class="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="row m-0">
                        <div class="col-sm-4">
                            <div class="page-header float-left">
                                <div class="page-title">
                                    <h1>Dashboard</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="page-header float-right">
                                <div class="page-title">
                                    <ol class="breadcrumb text-right">
                                        <li><a href="#">Dashboard</a></li>
                                        <li><a href="#">Forms</a></li>
                                        <li class="active">Basic</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->

             <div class="content">
                <div class="animated fadeIn">
                    <div class="col-lg-12">
                        
                            
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

                         

                           <div class="card border border-secondary ">
                            <div class="card-header"><strong>Company </strong><strong> Report</strong>
                                
                            </div>

                            <div class="card-body card-block">
                                <div id="showTable">
                                <div class="table-responsive">
                                    
                                   
                                    
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    
     
                                        <thead>
                                                                         
                                            <tr>
                                                <th>Sr.no</th>
                                                <th>Name</th>
                                                <th>Contact no.1</th>
                                                <th>Contact no.2</th>
                                                <th>Address</th>
                                                <th>Website</th>
                                                <th>EmailID</th>
                                                
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
		
                                  
         
		  
		   
           
<!-- Scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.matchHeight.min.js"></script>
    
   
<script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
   
    <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    
    <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
   
    <script src="assets/js/init/datatables-init.js"></script>
	<script src="assets/js/main.js"></script>
	 
   <script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    
    <script src="js/buttons.bootstrap4.min.js"></script>
    
    <script src="js/pdfmake.min.js"></script>
    <script src="js/vfs_fonts.js"></script>
    
    
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>  
   
   
      <script>
	$(document).ready(function() {
	    var table = $('#bootstrap-data-table').DataTable( {
	        lengthChange: false,
	        buttons: [ 'copy', 'excel', 'csv', 'pdf', 'print','colvis' ]
	    } );
	 
	    table.buttons().container()
	        .appendTo( '#bootstrap-data-table_wrapper .col-md-6:eq(0)' );
	} );
     </script>
 
    </body>
    </html>
                                                       --%>
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
  <!-- DataTables -->
  <link rel="stylesheet" href="AdminLTE-3.1.0/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="AdminLTE-3.1.0/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="AdminLTE-3.1.0/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="AdminLTE-3.1.0/dist/css/adminlte.min.css">
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
                <a href="" class="nav-link">
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
            <h1></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"></a></li>
              <li class="breadcrumb-item active"></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Company Report</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                   
                                                 <th>Sr.no</th>
                                                <th>Name</th>
                                                <th>Contact no.1</th>
                                                <th>Contact no.2</th>
                                                <th>Address</th>
                                                <th>Website</th>
                                                <th>EmailID</th>
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
                 
                 <!--  <tfoot>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                  </tr>
                  </tfoot> -->
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%-- <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer> --%>

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
<!-- DataTables  & Plugins -->
<script src="AdminLTE-3.1.0/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="AdminLTE-3.1.0./plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/jszip/jszip.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/pdfmake/pdfmake.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/pdfmake/vfs_fonts.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="AdminLTE-3.1.0/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="AdminLTE-3.1.0/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
    