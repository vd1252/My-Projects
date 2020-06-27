package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Properties;
import java.sql.*;

public final class orgtable_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/disp.jsp");
    _jspx_dependants.add("/orgheader.jsp");
    _jspx_dependants.add("/databaseinfo.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("\t\tfunction hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //for-mobile-apps -->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- font-awesome icons -->\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- //font-awesome icons -->\n");
      out.write("<!-- js -->\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("<!-- //js -->\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("        <!-- main slider-banner -->\n");
      out.write("<script src=\"js/skdslider.min.js\"></script>\n");
      out.write("<link href=\"css/skdslider.css\" rel=\"stylesheet\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t\tjQuery(document).ready(function(){\n");
      out.write("\t\t\tjQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\tjQuery('#responsive').change(function(){\n");
      out.write("\t\t\t  $('#responsive_wrapper').width(jQuery(this).val());\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("       ");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write('\n');
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\t\tjQuery(document).ready(function(){\n");
      out.write("\t\t\tjQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\tjQuery('#responsive').change(function(){\n");
      out.write("\t\t\t  $('#responsive_wrapper').width(jQuery(this).val());\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("</script>\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("<div class=\"agileits_header\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"w3l_offers\">\n");
      out.write("                            ");

                                if(session.getAttribute("restname")!=null)
                                {
                                    out.print("<p><h2 style='color:white'>Welcome "+session.getAttribute("restname")+" </h2></p>");
                                }
                            
      out.write("\n");
      out.write("                            \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"agile-login\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href=\"smslogout.jsp\">Logout</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"logo_products\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"w3ls_logo_products_left1\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<img src=\"images/logo.png\"/>\n");
      out.write("                                       \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("<!--\t\t\t<div class=\"w3ls_logo_products_left\">\n");
      out.write("\t\t\t\t<h1><a href=\"index.html\">super Market</a></h1>\n");
      out.write("\t\t\t</div>-->\n");
      out.write("<!--\t\t<div class=\"w3l_search\">\n");
      out.write("\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t<input type=\"search\" name=\"Search\" placeholder=\"Search for a Product...\" required=\"\">\n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"btn btn-default search\" aria-label=\"Left Align\">\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-search\" aria-hidden=\"true\"> </i>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>-->\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //header -->\n");
      out.write("\n");
      out.write("<div class=\"navigation-agileits\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t\t\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"navbar-header nav_2\">\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed navbar-toggle1\" data-toggle=\"collapse\" data-target=\"#bs-megadropdown-tabs\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-megadropdown-tabs\">\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"restaurantpanel.jsp\" class=\"act\">Home</a></li>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- Mega Menu -->\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Proceed to take food<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Get Food</h6>\n");
      out.write("                                                                                                                <li><a href=\"restable.jsp\"></a>Pick Food</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">List <b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>List</h6>\n");
      out.write("                                                                                                                \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listoforg.jsp\">List of Restaurant</a></li>\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofstudent.jsp\">List of Students</a></li>-->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Update<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Update here</h6>\n");
      out.write("                                                                                                                <li><a href=\"dropupdatecourse.jsp\">Update Restaurant</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofteachers.jsp\">Update Outlet</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofstudents.jsp\">Update Students</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>-->\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Delete<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Delete Here</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deletecourse.jsp\">Delete Restaurant</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deleteteacher.jsp\">Delete Outlet</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deletestudent.jsp\">Delete </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deletetimetable.jsp\">Delete TimeTable</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                                        <li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Add <b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Add here</h6>\n");
      out.write("                                                                                                                \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"addcourse.jsp\">Add Restaurant</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"addteacher.jsp\">Add Outlet</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"addstudent.jsp\">Add Students</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"mycatpage.jsp\">Add Category</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>-->\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Beverages<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Tea & Coeffe</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Green Tea</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Ground Coffee</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Herbal Tea</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Instant Coffee</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\"> Tea </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Tea Bags</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>-->\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t<li><a href=\"gourmet.html\">Gourmet</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"offers.html\">Offers</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"contact.html\">Contact</a></li>-->\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t</div><script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- top-header and slider -->\n");
      out.write("<!-- here stars scrolling icon -->\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\t/*\n");
      out.write("\t\t\t\tvar defaults = {\n");
      out.write("\t\t\t\tcontainerID: 'toTop', // fading element id\n");
      out.write("\t\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("\t\t\t\tscrollSpeed: 1200,\n");
      out.write("\t\t\t\teasingType: 'linear' \n");
      out.write("\t\t\t\t};\n");
      out.write("\t\t\t*/\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //here ends scrolling icon -->\n");
      out.write("<script src=\"js/minicart.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t// Mini Cart\n");
      out.write("\tpaypal.minicart.render({\n");
      out.write("\t\taction: '#'\n");
      out.write("\t});\n");
      out.write("\n");
      out.write("\tif (~window.location.search.indexOf('reset=true')) {\n");
      out.write("\t\tpaypal.minicart.reset();\n");
      out.write("\t}\n");
      out.write("</script>\n");
      out.write("<!-- main slider-banner -->\n");
      out.write("<script src=\"js/skdslider.min.js\"></script>\n");
      out.write("<link href=\"css/skdslider.css\" rel=\"stylesheet\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t\tjQuery(document).ready(function(){\n");
      out.write("\t\t\tjQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\tjQuery('#responsive').change(function(){\n");
      out.write("\t\t\t  $('#responsive_wrapper').width(jQuery(this).val());\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("</script>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t");
      out.write("\n");
      out.write("        ");

String PATH="jdbc:mysql://localhost/";
String PLACE="hungerfree";
String USERNAME="root";
String PASSWORD="";

      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    \n");
      out.write("    <!-- breadcrumbs -->\n");
      out.write("\t<div class=\"breadcrumbs\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"active\">REGISTER FOR PICK UP</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //breadcrumbs -->\n");
      out.write("<!-- register -->\n");
      out.write("\n");
      out.write("\t<div class=\"register\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h2>PICK UP</h2>\n");
      out.write("\t\t\t<div class=\"login-form-grids\">\n");
      out.write("                            <form  method=\"post\">\n");
      out.write("                            <div id=\"firstone\">\n");
      out.write("\t\t\t\t<h5>Organisation information</h5>\n");
      out.write("\t\t\t\t\n");
      out.write("                                <input type=\"text\" name=\"name\" value=\"");
      out.print(session.getAttribute("restname"));
      out.write("\" required=\" \" ><br>\n");
      out.write("                                <input type=\"email\" name=\"email\" value=\"");
      out.print(session.getAttribute("useremail"));
      out.write("\" required=\" \" ><br>\n");
      out.write("                                <input type=\"text\" name=\"qty\" placeholder=\"Quantity for no. of person\" required=\" \" ><br>\n");
      out.write("                              <select name=\"combores\" class=\"form-control\" id=\"aa\">\n");
      out.write("                                            <option>Choose Restaurant for Pick Food</option>\n");

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                 String q1="select nameofres from mrestable";
                 PreparedStatement myst1=conn.prepareStatement(q1);
                 ResultSet myresult1=myst1.executeQuery();
                 if(myresult1.next()==true)
                {
                    do
                    {

                        out.print("<option value="+myresult1.getString("sid") +">" +myresult1.getString("nameofres") + "</option>");
                    }
                    while(myresult1.next());
                }
                else
                {
                   out.print("<option value=''>Nothing</option>");
                    
                }
            }
            catch(Exception e)
            {
                    out.print("Error in query"+e.getMessage());
            }
            finally
            {
                conn.close();
            }
        }
        catch(Exception e)
        {
            out.print("Error in connection"+e.getMessage());
        }

      out.write("\n");
      out.write("</select><br>\n");
      out.write("                                        <input type=\"text\" name=\"time\" placeholder=\"Time for Pickup\" required=\" \" ><br>\n");
      out.write("                                        <input type=\"text\" name=\"loc\" placeholder=\"Location for Pickup\" required=\" \" ><br>\n");
      out.write("                                        <input type=\"text\" name=\"city\" placeholder=\"City for Pickup\" required=\" \" ><br>\n");
      out.write("                                        <input type=\"text\" name=\"state\" placeholder=\"State for Pickup\" required=\" \" ><br>\n");
      out.write("                                       \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("                             \n");
      out.write("                                <input type=\"submit\" class=\"button\" value=\"Proceed\" name=\"submit1\" id=\"s1\" ><br>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                            \n");
      out.write("                                 </form>     \n");
      out.write(" ");

    if(request.getParameter("s1")!=null)
    {
       
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                String qu="insert into morg values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1,session.getAttribute("sid").toString());
                myst.setString(2,session.getAttribute("restname").toString());
                myst.setString(3,session.getAttribute("useremail").toString());
                myst.setString(4,request.getParameter("qty"));
                myst.setString(5,request.getParameter("combores"));
                myst.setString(6,request.getParameter("time"));
                myst.setString(7,request.getParameter("loc"));
                myst.setString(8,request.getParameter("city"));
                myst.setString(9,request.getParameter("state"));
        
                
                ResultSet myres=myst.executeQuery();
                if(myres.next())
                {  
                
                  out.print("Proceeded Successfully");
                }
                else
                {
                    out.print("Not Proceeded");
                }
            }
            catch(Exception e)
            {
                out.print("Error in query"+e.getMessage());
            }
        }
        catch(Exception e)
        {
            out.print("Error in connection"+e.getMessage());
        }
    }

      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
