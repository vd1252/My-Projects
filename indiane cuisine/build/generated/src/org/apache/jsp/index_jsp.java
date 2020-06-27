package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.net.*;
import java.util.*;
import com.sun.syndication.feed.synd.*;
import com.sun.syndication.io.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/exefiles.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Zomato</title>\r\n");
      out.write("\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta name=\"keywords\" content=\"Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \r\n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\r\n");
      out.write("<script type=\"applijewelleryion/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\r\n");
      out.write("<link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel='stylesheet' type='text/css' />\r\n");
      out.write("<link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!-- Custom Theme files -->\r\n");
      out.write("<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\t\r\n");
      out.write("<link href=\"css/default.css\" rel='stylesheet' type='text/css' />\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\r\n");
      out.write("<!--webfonts-->\r\n");
      out.write("<link href='https//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link href='https//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.6.3/css/all.css\" integrity=\"sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("   <!--//webfonts-->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("  .modal-header, h4, .close {\r\n");
      out.write("      background-color: #5cb85c;\r\n");
      out.write("      color:white !important;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      font-size: 30px;\r\n");
      out.write("  }\r\n");
      out.write("  .modal-footer {\r\n");
      out.write("      background-color: #f9f9f9;\r\n");
      out.write("  }\r\n");
      out.write("  <!--Carousel-->\r\n");
      out.write("  /* Carousel Control */\r\n");
      out.write(" \r\n");
      out.write(".control-box {\r\n");
      out.write("    text-align: right;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("}\r\n");
      out.write(".carousel-control{\r\n");
      out.write("    background: #666;\r\n");
      out.write("    border: 0px;\r\n");
      out.write("    border-radius: 0px;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    font-size: 34px;\r\n");
      out.write("    font-weight: 200;\r\n");
      out.write("    line-height: 18px;\r\n");
      out.write("    opacity: 0.5;\r\n");
      out.write("    padding: 4px 10px 0px;\r\n");
      out.write("    position: static;\r\n");
      out.write("    height: 30px;\r\n");
      out.write("    width: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Mobile Only */\r\n");
      out.write("@media (max-width: 767px) {\r\n");
      out.write("    .page-header, .control-box {\r\n");
      out.write("        text-align: center;\r\n");
      out.write("    } \r\n");
      out.write("}\r\n");
      out.write("@media (max-width: 479px) {\r\n");
      out.write("    .caption {\r\n");
      out.write("        word-break: break-all;\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("  </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!----to include header portion------------>\r\n");
      out.write("    <div class=\"banner\">\r\n");
      out.write("         ");
      out.write("<!-- banner -->\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\">Cuisine Indienne</a></h1>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<nav class=\"navbar navbar-default\" role=\"navigation\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--/.navbar-header-->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("                                                               ");

                                    if(session.getAttribute("uname")!=null)
                                    {
                                        out.print("<li><a href='#'>Welcome "+session.getAttribute("uname")+"</a></li>");
					out.print("<li><a href='changepass.jsp'>Change Password</a></li>");
					out.print("<li><a href='contactus.jsp'>Help</a></li>");
                                        out.print("<li><a href='signout.jsp'>Sign out</a></li>");
                                        out.print("<li><a href='orderhistory.jsp'>View orders</a></li>");
                                        out.print("<li><a href='onlyorderfoodpage.jsp'>Order Food </a></li>");
                                    }
                                    else
                                    {
                                        out.print("<li class='active'><a href='index.jsp'>Home</a></li>");
					out.print("<li><a href='onlyorderfoodpage.jsp'>Order Food </a></li>");
					out.print("<li><a href='offers.html'>Offers</a></li>");
                                        out.print("<li><a href='signup.jsp'> Register </a></li>");
					out.print("<li><a href='login.jsp'>Login</a></li>");
					out.print("<li><a href='contact.jsp'>Contactus</a></li>");
                                        out.print("<li></li>");
                                        
                                    }
                                    
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--/.navbar-collapse-->\r\n");
      out.write("\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t<div class=\"search-box\">\r\n");
      out.write("\t\t\t\t\t<div id=\"sb-search\" class=\"sb-search\">\r\n");
      out.write("\t\t\t\t\t\t<form>\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"sb-search-input\" placeholder=\"Enter your search term...\" type=\"search\" name=\"search\" id=\"search\">\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"sb-search-submit\" type=\"submit\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"sb-icon-search\"> </span>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\r\n");
      out.write("                                <!-- search-scripts -->\r\n");
      out.write("                                        <script src=\"js/classie.js\"></script>\r\n");
      out.write("                                        <script src=\"js/uisearch.js\"></script>\r\n");
      out.write("                                        <script>\r\n");
      out.write("                                                new UISearch( document.getElementById( 'sb-search' ) );\r\n");
      out.write("                                        </script>\r\n");
      out.write("                                <!-- //search-scripts -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- //banner -->");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("         <div class=\"banner-info\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("                            \r\n");
      out.write("             \r\n");
      out.write("<!--                             Modal \r\n");
      out.write("  <div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("    \r\n");
      out.write("      <!-- Modal content\r\n");
      out.write("      <div class=\"modal-content\">\r\n");
      out.write("        <div class=\"modal-header\" style=\"padding:35px 50px;\">\r\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("          <h4><i class=\"fas fa-hotel\"></i> Table Booking</h4>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"modal-body\" style=\"padding:40px 50px;\">\r\n");
      out.write("          <form method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t<span>Name<label>*</label></span>\r\n");
      out.write("                                                        <input type=\"text\" placeholder=\"Email Address\" required=\" \" name=\"em\" class=\"form-control\" style=\"width:100%\"> <br>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("                                                    <span>Check-In<label>*</label></span>\r\n");
      out.write("                                                    <input class=\"date form-control\" style=\"width:100%\"  type=\"text\" value=\"Check In\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Check In';}\"> <br>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <span>Check-Out<label>*</label></span>\r\n");
      out.write("                                                    <input class=\"date form-control\" style=\"width:100%\"  type=\"text\" value=\"Check In\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Check In';}\"> <br>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                                                <div class=\"section_1\">\r\n");
      out.write("                                                        <span>Room Type<label>*</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t <select id=\"country\" style=\"border:1px solid #ccc;border-radius: 4px\"onchange=\"change_country(this.value)\" class=\"frm-field required\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"null\">Double Room</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"null\">Single Room</option>         \r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"AX\">Suit Room</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"AX\">Guest Room</option>\r\n");
      out.write("                                                         </select>\r\n");
      out.write("\t\t\t\t\t\t  </div><br>\r\n");
      out.write("            \r\n");
      out.write("              <button type=\"submit\" class=\"btn btn-success btn-block\"><i class=\"fas fa-search\"></i>Search</button>\r\n");
      out.write("          </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"modal-footer\">\r\n");
      out.write("          <button type=\"submit\" class=\"btn btn-danger btn-default pull-left\" data-dismiss=\"modal\"><span class=\"glyphicon glyphicon-remove\"></span> Cancel</button>\r\n");
      out.write("          <p>Not a member? <a href=\"#\">Sign Up</a></p>\r\n");
      out.write("          <p>Forgot <a href=\"#\">Password?</a></p>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("  </div> -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                         <div class=\"col-md-12\">\r\n");
      out.write("\t\t\t\t<div class=\"details-1\">\r\n");
      out.write("                                      <form class=\"form\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-12 dropdown-buttons\">   \r\n");
      out.write("                                            \r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 dropdown-button\">           \t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"section_1\">\r\n");
      out.write("                                                           \r\n");
      out.write("\t\t\t\t\t\t\t <select name=\"city\" required=\" \" id=\"city\" class=\"frm-field required\">\r\n");
      out.write("                                                             <option></span>Select City</span></option>\r\n");
      out.write("                                                              ");
      String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                    try
                    {
                        String qu="select * from city";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        ResultSet res=myst.executeQuery();
                        if(res.next())
                        {
                            do
                            {
                                out.print("<option value='"+res.getString("cityid")+"'>"+res.getString("city")+"</option>");
                                
                            }while(res.next());
                        }
                        else
                        {
                            out.print("<option>No City available</option>");
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in connection"+e.getMessage());
                    }
                }
                catch(Exception e)
                {
                    out.print("Error in connection"+e.getMessage());
                }

            
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t </select>\r\n");
      out.write("              <div id=\"msg\"></div>\r\n");
      out.write("\t\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!---strat-date-piker---->\r\n");
      out.write("\t\t\t\t\t\t\t<link rel=\"stylesheet\" href=\"css/jquery-ui.css\" />\r\n");
      out.write("\t\t\t\t\t\t\t<script src=\"js/jquery-ui.js\"></script>\r\n");
      out.write("\t\t\t\t\t\t\t  <script>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  $(function() {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t$( \"#datepicker,#datepicker1\" ).datepicker();\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  });\r\n");
      out.write("\t\t\t\t\t\t\t  </script>\r\n");
      out.write("\t\t\t\t\t\t<!---/End-date-piker---->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 dropdown-button\">           \t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"section_1\">\r\n");
      out.write("\t\t\t\t\t\t\t<select name=\"locality\" required=\" \" id=\"locality\" class=\"frm-field required\">\r\n");
      out.write("                                                             <option value=\"Select Locality\"><span>Select Locality</span></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t </select>\r\n");
      out.write("                                                            \r\n");
      out.write("                                                            <div id=\"msg2\"></div>\r\n");
      out.write("\t\t\t\t\t\t  </div>\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t  <div class=\"col-md-3 dropdown-button\">           \t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input class=\"form-control has-dark-background\" name=\"src\" id=\"auto\" placeholder=\"Enter Restaurant name or Cuisine \" type=\"text\" >\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("                                                <div class=\"col-md-3 submit_button\"> \r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Search\" name=\"s\" >\r\n");
      out.write("                                                         ");

                                                         String localityid="",cityid="";    
                                            if(request.getParameter("s")!=null)
                                            {         
                                                     
                                            try
                                                {        
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                    if(!(request.getParameter("locality").equals("Select Locality")))
                                                    {
                                                        localityid = request.getParameter("locality");
                                                    }
                                                    if(!(request.getParameter("city").equals("Select City")))
                                                    {
                                                        cityid = request.getParameter("city");
                                                    }
                                                    
                                                    try
                                                    {  String q="select * from resturant where locality_id=? and cityid=?";
                                                       PreparedStatement myst=myconnection.prepareStatement(q);
                                                       myst.setString(1,localityid);  
                                                       myst.setString(2,cityid);
                                                       ResultSet myres = myst.executeQuery();
                                                       
                                                        if(myres.next())
                                                        {
                                                            
                                                            response.sendRedirect("orderfood3.jsp?locality_id="+myres.getString("locality_id"));
                                                        }
                                                        else
                                                        {
                                                            response.sendRedirect("index.jsp");
                                                        }
                                                            
                                                    }
                                                        
                                                               
                                                catch(Exception e)
                                                {
                                                    out.print("Error in query"+e.getMessage());
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                                out.print("Error in query"+e.getMessage());
                                            }
                                            
                                           }
                                            
                                        
      out.write("            \t\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div> \r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\t\t</div> \r\n");
      out.write("    </div>\r\n");
      out.write("         \r\n");
      out.write("         <!---- Banner----->\r\n");
      out.write("     \r\n");
      out.write("    <!-- Restaurant -->\r\n");
      out.write("    <!--Carousel-->\r\n");
      out.write("    <div class=\"tels\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("                        <div class=\"carousel slide\" id=\"myCarousel1\">\r\n");
      out.write("        <div class=\"carousel-inner\">\r\n");
      out.write("            \r\n");
      out.write("                       ");

                           try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                try{
                                                String qrest="select * from resturant ";
                                                       PreparedStatement mystrest=myconnection.prepareStatement(qrest);
                                                       
                                                       ResultSet myresrest = mystrest.executeQuery();
                                                       
                                                        if(myresrest.next())
                                                        {
                                                            int count=0,row=0;
                                                            do{
                                                                 
                                                                if(row==0&&count==0){ 
                                                                
                       
      out.write(" \r\n");
      out.write("                       <div class=\"item active\">\r\n");
      out.write("                    <ul class=\"thumbnails\">\r\n");
      out.write("                        ");

                            
                    }
else if(row>0&&row<=4&&count==0)
{
    
      out.write("\r\n");
      out.write("                    <div class=\"item\">\r\n");
      out.write("                    <ul class=\"thumbnails\">\r\n");
      out.write("                        ");

}
                    
                    
      out.write("\r\n");
      out.write("                        <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <a href=\"restaurantetails.jsp?rid=");
 out.print(myresrest.getString("rid"));
      out.write("\"><img src=\"");
 out.print("cimages/"+myresrest.getString("image"));
      out.write("\" alt=\"\" style=\"height:150px;width:250px\"></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                          <div class=\"caption\" style=\"background-color:lavender;padding: 10px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h4>");
 out.print(myresrest.getString("rname")); 
      out.write("</h4>\r\n");
      out.write("                                                                        <center><p>");
 
                                                                            try{
                                                                                       String qc="select * from city where cityid=? ";
                                                       PreparedStatement mystc=myconnection.prepareStatement(qc);
                                                       mystc.setString(1,myresrest.getString("cityid"));
                                                       ResultSet myresc = mystc.executeQuery();
                                                       
                                                        if(myresc.next())
                                                        {
                                                            out.print(myresc.getString("city"));
                                                        }
                                                        else
                                                        {
                                                            out.print("city name");
                                                        }
                                                                            }
                                                                            catch(Exception e)
                                                                            {
                                                                                out.print("Error in query"+e.getMessage());
                                                                            }
                                                                                
      out.write("</p></center>\r\n");
      out.write("                                                                        <center><p>");
out.print(myresrest.getString("shopemail"));
      out.write("</p></center>\r\n");
      out.write("                                                                        <center><a class=\"hvr-shutter-in-horizontal\" href=\"onlyorderfoodpage.jsp\">Order Now</a></center>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                 </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        ");

        count++;
        if(count==4&&row<=4)
        {
            count=0;
            row++;
    
      out.write("\r\n");
      out.write("    </ul>\r\n");
      out.write("              </div><!-- /Slide1 --> \r\n");
      out.write("              ");

        }

                    
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                        ");

                            } while(myresrest.next());
                                                    }}
                                                    catch(Exception e)
                                                {
                                                    out.print("Error in query"+e.getMessage());
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                                out.print("Error in connection"+e.getMessage());
                                            }
                        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("              \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("       \r\n");
      out.write("\t   <nav>\r\n");
      out.write("\t\t\t<ul class=\"control-box pager\">\r\n");
      out.write("\t\t\t\t<li><a data-slide=\"prev\" href=\"#myCarousel1\" class=\"\"><i class=\"fas fa-arrow-left\"></i></a></li>\r\n");
      out.write("\t\t\t\t<li><a data-slide=\"next\" href=\"#myCarousel1\" class=\"\"><i class=\"fas fa-arrow-right\"></i></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t   <!-- /.control-box -->   \r\n");
      out.write("                              \r\n");
      out.write("    </div><!-- /#myCarousel -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("        \r\n");
      out.write("                                \r\n");
      out.write("             <!--/Carousel-->\r\n");
      out.write("<!-- special -->\r\n");
      out.write("\t<div class=\"special\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"spe-info\" style=\"height:300px;\">\r\n");
      out.write("\t\t\t\t<h3 style=\"margin-bottom: 5px;\">Special Offer</h3>\r\n");
      out.write("                                              <div class=\"carousel slide\" id=\"myCarousel\">\r\n");
      out.write("        <div class=\"carousel-inner\">\r\n");
      out.write("            <div class=\"item active\">\r\n");
      out.write("                    <ul class=\"thumbnails\">\r\n");
      out.write("                        <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (5).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                  </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (1).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                         <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (2).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                       <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (3).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("              </div><!-- /Slide1 --> \r\n");
      out.write("            <div class=\"item\">\r\n");
      out.write("                    <ul class=\"thumbnails\">\r\n");
      out.write("                       <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (4).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (5).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                   <img src=\"images/offer1 (4).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t\t\t\t<div class=\"fff\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"thumbnail\" style=\"background-color: #acafa3\">\r\n");
      out.write("                                                                    <img src=\"images/offer1 (1).jpg\" alt=\"\" style=\"height:150px;width:250px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("              </div><!-- /Slide2 --> \r\n");
      out.write("         </div>\r\n");
      out.write("         <nav>\r\n");
      out.write("\t\t\t<ul class=\"control-box pager\" style=\"margin-top:3px;\">\r\n");
      out.write("\t\t\t\t<li><a data-slide=\"prev\" href=\"#myCarousel\" class=\"\"><i class=\"fas fa-arrow-left\"></i></a></li>\r\n");
      out.write("\t\t\t\t<li><a data-slide=\"next\" href=\"#myCarousel\" class=\"\"><i class=\"fas fa-arrow-right\"></i></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t   <!-- /.control-box -->   \r\n");
      out.write("   </div><!-- /#myCarousel -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("    <!-- special -->\r\n");
      out.write("    <!-- quick -->\r\n");
      out.write("\t<div class=\"quick\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"col-md-4 quick-left\">\r\n");
      out.write("                            <h3>We are live in these Cities</h3>\r\n");
      out.write("                                <div  style=\"overflow-y: auto;height: 250px;\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("                                            ");

                                                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                try{
                                                String qcity="select * from city ";
                                                       PreparedStatement mystcity=myconnection.prepareStatement(qcity);
                                                       
                                                       ResultSet myrescity = mystcity.executeQuery();
                                                       
                                                        if(myrescity.next())
                                                        {
                                                            do{
                                            
      out.write("\r\n");
      out.write("                                            <li><a href=\"orderfood5.jsp?cityid=");
 out.print(myrescity.getString("cityid")); 
      out.write('"');
      out.write('>');
 out.print(myrescity.getString("city"));
      out.write("</a></li>\r\n");
      out.write("                                                \r\n");
      out.write("\t\t\t\t\t\t");

                                                    } while(myrescity.next());
                                                    }}
                                                    catch(Exception e)
                                                {
                                                    out.print("Error in query"+e.getMessage());
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                                out.print("Error in query"+e.getMessage());
                                            }
                                                
      out.write("\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-4 quick-left\">\r\n");
      out.write("\t\t\t\t<h3>News & Events</h3>\r\n");
      out.write("                                \r\n");
      out.write("\t\t<div class=\"holder\" >\r\n");
      out.write("\t\t\t<ul id=\"ticker01\">\r\n");
      out.write("                            ");

                            String rssFeedUrl="https://www.foodbusinessnews.net/rss/topic/469-global-cuisine";
                            try
                            {
                            URLConnection feedUrl = new URL(rssFeedUrl).openConnection();
                            SyndFeedInput input = new SyndFeedInput();
                            SyndFeed feed =null;
                            feed=input.build(new XmlReader(feedUrl));
                            List list = feed.getEntries();
                            for (int i=0 ; i < list.size(); i++)
                            {
                                SyndEntry entry = (SyndEntry)list.get(i);
                                SyndContent mycontent=entry.getDescription();
                            
      out.write("\r\n");
      out.write("\t\t\t\t<li><span>");
out.print(entry.getPublishedDate());
      out.write("\r\n");
      out.write("                                </span>");
 out.print(entry.getTitle()+" ");
      out.write("<a href=\"");
 out.print(entry.getLink());
      out.write("\">More</a></li>\r\n");
      out.write("                            ");

                            }      }
                            catch(Exception e)
                            {
                            e.printStackTrace();
                            }
                            
      out.write("\r\n");
      out.write("                            \r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-4 quick-left\">\r\n");
      out.write("\t\t\t\t<h3 style=\"margin:0px;\">Book A table</h3>\r\n");
      out.write("\t\t\t\t\t<form method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t<span>Name<label>*</label></span>\r\n");
      out.write("                                                        <input type=\"text\" placeholder=\"Name\" required=\" \" name=\"em\" class=\"form-control\" style=\"width:100%\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("                                                    <span>Dining Time<label>*</label></span>\r\n");
      out.write("                                                    <input class=\"date form-control\" style=\"width:100%\"  type=\"text\" value=\"Check In\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Check In';}\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <span>Number of People<label>*</label></span>\r\n");
      out.write("                                                    <input class=\"date form-control\" style=\"width:100%\"  type=\"text\" value=\"Check In\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Check In';}\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                                                <div class=\"section_1\">\r\n");
      out.write("                                                        <span>City Name<label>*</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t <select id=\"country\" style=\"border:1px solid #ccc;border-radius: 4px\"onchange=\"change_country(this.value)\" class=\"frm-field required\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"null\">Double Room</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"null\">Single Room</option>         \r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"AX\">Suit Room</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"AX\">Guest Room</option>\r\n");
      out.write("                                                         </select>\r\n");
      out.write("\t\t\t\t\t\t  </div><br>\r\n");
      out.write("            \r\n");
      out.write("              <button type=\"submit\" class=\"btn btn-success btn-block\"><i class=\"fas fa-search\"></i>Search</button>\r\n");
      out.write("          </form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("    <!-- quick -->\r\n");
      out.write("        <!--------To include footer portion--------->\r\n");
      out.write("            ");
      out.write("<!-- footer -->\r\n");
      out.write("\t<div class=\"footer\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"col-md-2 deco\">\r\n");
      out.write("\t\t\t\t<h4>Navigation</h4>\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">About Us</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"onlyorderfoodpage.jsp\">Order Food</a></li> \r\n");
      out.write("\t\t\t\t<li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-2 deco\">\r\n");
      out.write("\t\t\t\t<h4>Links</h4> \r\n");
      out.write("\t\t\t\t<li><a href=\"login.jsp\">Sign-in</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"signup.jsp\">Register</a></li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-2 deco\">\r\n");
      out.write("\t\t\t\t<h4>Social</h4>\r\n");
      out.write("\t\t\t\t<div class=\"soci\">\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\"><i class=\"t-1\"> </i></a></li>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-3 cardss\">\r\n");
      out.write("\t\t\t\t<h4>Easy Payment</h4>\r\n");
      out.write("                                <li style=\"color:white;\">Cash On Delivery</li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-3 pos\">\r\n");
      out.write("\t\t\t<h4>Feedback Form</h4>\r\n");
      out.write("\t\t\t\t\t   <form method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t <input type=\"text\" class=\"textbox\" value=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email';}\">\r\n");
      out.write("\t\t\t\t\t\t<textarea  class=\"textbox\" onfocus=\"this.value='';\" onblur=\"if (this.value == '') {this.value = 'Message';}\">Message</textarea>\r\n");
      out.write("                                                 <div class=\"smt\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Subscribe\">\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("\t\t\t\t\t   </form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"footer-bottom\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<p>© 2018 CUISINE INDIENNE . All Rights Reserved | Design and Development by HAV Developers</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t<!-- footer -->\r\n");
      out.write("\r\n");
      out.write("            <script>\r\n");
      out.write("                jQuery.fn.liScroll = function(settings) {\r\n");
      out.write("\tsettings = jQuery.extend({\r\n");
      out.write("\t\ttravelocity: 0.03\r\n");
      out.write("\t\t}, settings);\t\t\r\n");
      out.write("\t\treturn this.each(function(){\r\n");
      out.write("\t\t\t\tvar $strip = jQuery(this);\r\n");
      out.write("\t\t\t\t$strip.addClass(\"newsticker\")\r\n");
      out.write("\t\t\t\tvar stripHeight = 1;\r\n");
      out.write("\t\t\t\t$strip.find(\"li\").each(function(i){\r\n");
      out.write("\t\t\t\t\tstripHeight += jQuery(this, i).outerHeight(true); // thanks to Michael Haszprunar and Fabien Volpi\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\tvar $mask = $strip.wrap(\"<div class='mask'></div>\");\r\n");
      out.write("\t\t\t\tvar $tickercontainer = $strip.parent().wrap(\"<div class='tickercontainer'></div>\");\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\tvar containerHeight = $strip.parent().parent().height();\t//a.k.a. 'mask' width \t\r\n");
      out.write("\t\t\t\t$strip.height(stripHeight);\t\t\t\r\n");
      out.write("\t\t\t\tvar totalTravel = stripHeight;\r\n");
      out.write("\t\t\t\tvar defTiming = totalTravel/settings.travelocity;\t// thanks to Scott Waye\t\t\r\n");
      out.write("\t\t\t\tfunction scrollnews(spazio, tempo){\r\n");
      out.write("\t\t\t\t$strip.animate({top: '-='+ spazio}, tempo, \"linear\", function(){$strip.css(\"top\", containerHeight); scrollnews(totalTravel, defTiming);});\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tscrollnews(totalTravel, defTiming);\t\t\t\t\r\n");
      out.write("\t\t\t\t$strip.hover(function(){\r\n");
      out.write("\t\t\t\tjQuery(this).stop();\r\n");
      out.write("\t\t\t\t},\r\n");
      out.write("\t\t\t\tfunction(){\r\n");
      out.write("\t\t\t\tvar offset = jQuery(this).offset();\r\n");
      out.write("\t\t\t\tvar residualSpace = offset.top + stripHeight;\r\n");
      out.write("\t\t\t\tvar residualTime = residualSpace/settings.travelocity;\r\n");
      out.write("\t\t\t\tscrollnews(residualSpace, residualTime);\r\n");
      out.write("\t\t\t\t});\t\t\t\r\n");
      out.write("\t\t});\t\r\n");
      out.write("};\r\n");
      out.write("\r\n");
      out.write("        $(function(){\r\n");
      out.write("            $(\"ul#ticker01\").liScroll();\r\n");
      out.write("        });\r\n");
      out.write("        $(window).load(function()\r\n");
      out.write("        {\r\n");
      out.write("            $('#myModal').modal('show');\r\n");
      out.write("        });\r\n");
      out.write("       // Carousel Auto-Cycle\r\n");
      out.write("  $(document).ready(function() {\r\n");
      out.write("    $('.carousel').carousel({\r\n");
      out.write("      interval: 3000\r\n");
      out.write("    })\r\n");
      out.write("  });\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write(" </script>  \r\n");
      out.write("  <script>\r\n");
      out.write("               $(document).ready(function(){\r\n");
      out.write("                  $(\"#city\").change(function(){\r\n");
      out.write("                      var a=$(this).val();\r\n");
      out.write("                      $.ajax({\r\n");
      out.write("                          url:\"selectlocalityajax3.jsp\",\r\n");
      out.write("                          data:{\"cityajax\":a},\r\n");
      out.write("                          type:\"post\",\r\n");
      out.write("                          beforeSend:function()\r\n");
      out.write("                          {\r\n");
      out.write("                              $(\"#msg\").html(\"<img src='lib/preloader.gif' width='30px' height='30px'>\");\r\n");
      out.write("                          },\r\n");
      out.write("                          success:function(res)\r\n");
      out.write("                          {\r\n");
      out.write("                              $(\"#msg\").html(\"\");\r\n");
      out.write("                              $(\"#locality\").html(res)\r\n");
      out.write("                          },\r\n");
      out.write("                          error:function()\r\n");
      out.write("                          {\r\n");
      out.write("                               $(\"#msg\").html(\"Error in ajax\");\r\n");
      out.write("                          }\r\n");
      out.write("                          \r\n");
      out.write("                          \r\n");
      out.write("                      })\r\n");
      out.write("                      \r\n");
      out.write("                  })\r\n");
      out.write("                  $(\"#locality\").change(function(){\r\n");
      out.write("                      var a=$(this).val();\r\n");
      out.write("                      abc(a);\r\n");
      out.write("                      \r\n");
      out.write("                  })\r\n");
      out.write("                  \r\n");
      out.write("              })\r\n");
      out.write("              \r\n");
      out.write("              \r\n");
      out.write("          </script>\r\n");
      out.write("          <link href=\"js/jquery-ui.css\" rel=\"stylesheet\"/>\r\n");
      out.write("          <script src=\"js/jquery-ui.js\"></script>\r\n");
      out.write("          <script>\r\n");
      out.write("            $(function() {\r\n");
      out.write("              \r\n");
      out.write("    $( \"#auto\" ).autocomplete({\r\n");
      out.write("      source: \"searchres.jsp\",\r\n");
      out.write("      minLength: 2,\r\n");
      out.write("      select: function( event, ui ) {\r\n");
      out.write("\t\t   $.ajax({\r\n");
      out.write("\t\t\t   url:\"restaurantajax.jsp\",\r\n");
      out.write("\t\t\t   data:{\"rname\":ui.item.value},\r\n");
      out.write("\t\t\t   type:\"post\",\r\n");
      out.write("\t\t\t   success:function(res)\r\n");
      out.write("\t\t\t   {\r\n");
      out.write("\t\t\t\t  window.location=\"orderfood4.jsp?rid=\"+res;\r\n");
      out.write("\t\t\t   },\r\n");
      out.write("\t\t\t   error:function()\r\n");
      out.write("\t\t\t   {\r\n");
      out.write("\t\t\t\t   alert(\"error in ajax\")\r\n");
      out.write("\t\t\t\t   \r\n");
      out.write("\t\t\t   }   \r\n");
      out.write("\t\t   })   \r\n");
      out.write("\t   }\r\n");
      out.write("      \r\n");
      out.write("    });\r\n");
      out.write("  });\r\n");
      out.write("            </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
