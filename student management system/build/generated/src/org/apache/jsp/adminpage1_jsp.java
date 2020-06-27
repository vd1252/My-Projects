package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminpage1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/disp.jsp");
    _jspx_dependants.add("/adminheader.jsp");
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


    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }

      out.write('\n');
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
      out.write("                            <p><h2 style='color:white'>Welcome Admin</h2></p>\n");
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
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"adminpanel.jsp\" class=\"act\">Home</a></li>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- Mega Menu -->\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Food Delivery<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>All Courses</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Food Delivery</a></li>\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Electronics and Communication Engineering</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Electrical Engineering</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Civil Engineering</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\"> Mechanical Engineering</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Information & Technology Engineering</a></li>-->\n");
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
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofcourse.jsp\">List of Restaurant</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofteacher.jsp\">List of Outlet</a></li>\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofstudent.jsp\">List of Students</a></li>-->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Update<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Update here</h6>\n");
      out.write("                                                                                                                <li><a href=\"dropupdatecourse.jsp\">Update Restaurant</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"listofteachers.jsp\">Update Outlet</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<!--<li><a href=\"listofstudents.jsp\">Update Students</a></li>-->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Delete<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Delete Here</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deletecourse.jsp\">Delete Restaurant</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deleteteacher.jsp\">Delete Outlet</a></li>\n");
      out.write("<!--\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deletestudent.jsp\">Delete </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"deletetimetable.jsp\">Delete TimeTable</a></li>-->\n");
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
      out.write("<!--\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"addstudent.jsp\">Add Students</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"mycatpage.jsp\">Add Category</a></li>-->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

    //String catname=request.getParameter("catname");
    int categoryid=Integer.parseInt(request.getParameter("catid"));
    session.setAttribute("catid",categoryid);
    out.print("<div class='breadcrumbs'> <div class='container'> <ol class='breadcrumb breadcrumb1 animated wow slideInLeft' data-wow-delay='.5s'> <li><a href='adminpanel.jsp'><span class='glyphicon glyphicon-home' aria-hidden='true'></span>Main Panel</a></li> <li class='active'>Information</li> </ol> </div> </div>");

      out.write("\n");
      out.write("        ");

            if(request.getParameter("catid")!=null)
            {
                String x="";
                String y="";
                int myid=Integer.parseInt(request.getParameter("catid"));
                if(myid==3)
                {
                  x="Student";
                  y="student";
                }
                else if(myid==2)
                {
                    x="Teacher";
                    y="teacher";
                }
                else if(myid==1)
                {
                    x="Course";
                    y="course";
                }
                else if(myid==4)
                {
                    x="Time Table";
                    y="timetable";
                }
                
                 out.print("<div class='agile_top_brand_left_grid1'> "
                        + "<figure>"
                        + " <div class='agile_top_brands_grids'>"
                        + " <div class='col-md-4 top_brand_left'>"
                        + " <div class='hover14 column'> <div class='agile_top_brand_left_grid'>"
                        + " <a href='add"+y+".jsp?mysid="+myid+"'>"
                        + "<img src='images/addicon.png' width='500' height='300' align='justify'></a>"
                        + " <div class='snipcart-details top_brand_home_details'> "
                        + "<form method='post'> <fieldset>"
                        + " <input type='submit' name='submit' value='Add "+x+"' class='button'> </fieldset>"
                        + " </form> </div> </div> </div> </div> </div> </figure> "
                        + "<figure> <div class='agile_top_brands_grids'>"
                        + " <div class='col-md-4 top_brand_left'> <div class='hover14 column'>"
                        + " <div class='agile_top_brand_left_grid'> "
                                + "<a href='listof"+y+".jsp?mysid=mstudent'>"
                        + "<img src='images/updateicon.jpg' width='500' height='300'></a>"
                        + " <div class='snipcart-details top_brand_home_details'> <form method='post'> "
                        + "<fieldset> <input type='submit' name='submit' value='Update "+x+"' class='button'> "
                        + "</fieldset> </form> </div> </div> </div> </div> </div> "
                        + "</figure>  <figure> "
                        + "<div class='agile_top_brands_grids'> <div class='col-md-4 top_brand_left'>"
                        + " <div class='hover14 column'> <div class='agile_top_brand_left_grid'> "
                        + "<center><a href='delete"+y+".jsp?mysid=mstudent'><img src='images/deleteicon.png' width='400' height='300'></center></a> "
                        + "<div class='snipcart-details top_brand_home_details'> "
                        + "<form method='post'> <fieldset>"
                        + " <input type='submit' name='submit' value='Delete "+x+"' class='button'> "
                        + "</fieldset> </form> </div> </div> </div> </div> </div> "
                        + "</figure><div class='clearfix'></div>"
                                + "<figure>"
                        + " <div class='agile_top_brands_grids'>"
                        + " <div class='col-md-4 top_brand_left'>"
                        + " <div class='hover14 column'> <div class='agile_top_brand_left_grid'>"
                        + " <a href='listof"+y+".jsp?mysid="+myid+"'>"
                        + "<img src='images/addicon.png' width='500' height='300' align='justify'></a>"
                        + " <div class='snipcart-details top_brand_home_details'> "
                        + "<form method='post'> <fieldset>"
                        + " <input type='submit' name='submit' value='List of Students' class='button'> </fieldset>"
                        + " </form> </div> </div> </div> </div> </div> </figure>"
                        +" <div class='clearfix'></div> </div>");     
            }
            
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
