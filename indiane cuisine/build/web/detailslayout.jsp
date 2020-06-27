<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>

<%@include file="exefiles.jsp" %>
<%@page import="java.net.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="com.sun.syndication.feed.synd.*"%> 
<%@ page import="com.sun.syndication.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  .mypanel
  {border-bottom:1px solid #F3F3F3;
  }
 body {
      position: relative; 
  }
  #section1 {margin-left: 27px;padding-top:50px;padding-left:50px;padding-right:50px;height:500px;color: black; background-color: #F3F3F3;overflow:auto;}
  #section2 {margin-left: 27px;padding-top:50px;padding-left:50px;padding-right:50px;height:500px;color: black; background-color: #F3F3F3;overflow:auto;}
  #section3 {margin-left: 27px;padding-top:50px;padding-left:50px;padding-right:50px;height:500px;color: black; background-color: #F3F3F3;overflow:auto;}
  #section4 {margin-left: 27px;padding-top:50px;padding-left:50px;padding-right:50px;height:500px;color: black; background-color: #F3F3F3;overflow:auto;}
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
    <!----to include header portion------------>
    <%@include file="header.jsp" %>
      <!-- single -->
        <div class="single">
            <div class="container-fluid">
                <div class="col-md-8">
                        <div class="single-top row">
                            <div class="col-md-6 single-left">
                                    <a href="details.html"><img src="images/14.jpg" class="img-responsive" alt=""></a>
                            </div>
                            <div class="col-md-6 single-right">
                                <h1><a href="details.html">Barista Lavazza</a></h1><br><br>
                                    <h3>Model Town   •Cafe</h3>
                                    <hr style="height:2px;">
                                    <h4>Open Now|Cost for two Rs 600</h4>
                                    <div class="sinbt">
                                            <a class="hvr-shutter-in-horizontal" href="details.html">Order Now</a>
                                    </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    
                            <!--Overflow scrollspy-->
                            
                          
                               <div class='row'> 
                            <nav class="navbar navbar-inverse brand-menu-sidebar" style="z-index: 1">
                                
                            <div class="navbar-header">
                                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>                        
                                </button>
                              </div>
                              <div>
                                <div class="collapse navbar-collapse" id="myNavbar">
                                  <ul class="nav navbar-nav">
                                   <li><a href="#section1">Fish</a></li>
                                    <li><a href="#section2">Combos</a></li>
                                   <li><a href="#section3">Quick Bites</a></li>
                                    <li><a href="#section4">Pasta</a></li>
                                  </ul>
                                </div>
                              </div>
                               </nav>
                               </div>
                           
                          
                          <div id="section1" >
                              <h1>Fish</h1>
                             <div class="panel panel-default">
                                   <div class="panel-body mypanel"  >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">
                                            <div id="panel1">
                                                <img class="sign" src="images/red.png"><span class="myfont2">Fish+Chips</span>
                                                <p><i class="fas fa-rupee-sign"></i>300</p>
                                            </div>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button  class="btn btn-success btn1" style="width:100px;">Add</button>
                                               <div class="input-group number-spinner myspinner spinner1" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" id="minus" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" id="text" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" id= "plus" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                 <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/red.png"><span class="myfont2">Fish+Chips</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button class="btn btn-success " style="width:100px;">Add</button>
                                               <div  class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                  <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/red.png"><span class="myfont2">Fish+Chips</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                  <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/red.png"><span class="myfont2">Fish+Chips</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" id="spin"value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                  <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/red.png"><span class="myfont2">Fish+Chips</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" id="spin"value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                  <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/red.png"><span class="myfont2">Fish+Chips</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" id="spin"value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                              </div>
                         </div>
                          <div id="section2" >
                            <h1>Combos</h1>
                            <div class="panel panel-default">
                                  <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                 <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                              </div>
                          </div>
                          <div id="section3" >
                            <h1>Quick Bites</h1>
                            <div class="panel panel-default">
                                     <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                   <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                   <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                  <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                              </div>
                          </div>
                          <div id="section4" >
                            <h1>Pasta</h1>
                            <div class="panel panel-default">
                                     <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                   <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                <div class="panel-body mypanel" >
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">                                    
                                      <img class="sign" src="images/veg.png"><span class="myfont2">Veg Burger Combo</span>
                                      <p><i class="fas fa-rupee-sign"></i>300</p>
                                      <small>Veg Burger+plain fries+coke[300ml]</small>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <button id="btn1" class="btn btn-success" style="width:100px;">Add</button>
                                               <div id="spinner1" class="input-group number-spinner myspinner" style="z-index: 0; display:none;">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" class="form-control text-center" id="spin" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default"  data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                        </div>
                                              </div>
                                      </div>
                                        </div>
                                   </div>
                                 </div>
                             </div>
                          </div>
                         
                 <div class="col-md-4">
                    <div class="row">
                        <div class="panel panel-default">
                            <div class="panel-body" style="height:360px;">
                                <h1>Delivery Location</h1><br><br>
                              <div class="section_1">

                                     <select id="country" style="border:1px solid #ccc;border-radius: 4px"onchange="change_country(this.value)" class="frm-field required">
                    
                                         <option value="null">Adarsh Nagar</option>
                                            <option value="null">Model Town</option>         
                                            <option value="AX">BMC chownk</option>
                                            <option value="AX">GTB Nagar</option>
                                     </select><br><br>
                             </div>
                           <span class="glyphicon glyphicon-remove-circle"></span><center><h5 style="color:red;">Oops We don't deliver to this location</h5></center>
                        </div>
                      </div>
                    </div>
                    <div class="row brand-cart-sidebar-main">
                        <div class="panel panel-default brand-cart-sidebar">
                            <div class="panel-body" style="height:500px;">
                                <h1>Your Order</h1><br><br>
                                
                                    <div class="col-md-6" id="ajaxorder">
                                    </div>
                                    
                                <div class="col-md-6" >
                                            <div class="col-xs-12 ">
                                              <div  class="input-group number-spinner myspinner" id="ajaxspinner" style="display:none;" >
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="dwn"><i class="fas fa-minus"></i></button>
                                                </span>
                                                <input type="text" id="textin" class="form-control text-center" value="1">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" data-dir="up"><i class="fas fa-plus"></i></button>
                                                </span>
                                            </div>
                                              </div>
                                      </div>
                                
                        </div>
                      </div>
                    </div>
                     <div class="row">
                        <div class="panel panel-default" >
                            <div class="panel-body"style="position:fixed;bottom:0px;z-index: 3px;width:33%;height:150px;background-color: #F3F3F3;">
                                <h1>Subtotal</h1><br><br>
                                 <div class="register-but" >
                                     <center> <input class="acount-btn" type="submit" value="Continue" name="s1" style="width:33%;margin-bottom: 2px;"></center>
                                           <div class="clearfix"> </div>
                                 </div>
                            </div>
                      </div>
                    </div>
                </div>
            </div>
        </div>
        
                
    <!-- tels -->
  <script>
                jQuery.fn.liScroll = function(settings) {
	settings = jQuery.extend({
		travelocity: 0.03
		}, settings);		
		return this.each(function(){
				var $strip = jQuery(this);
				$strip.addClass("newsticker")
				var stripHeight = 1;
				$strip.find("li").each(function(i){
					stripHeight += jQuery(this, i).outerHeight(true); // thanks to Michael Haszprunar and Fabien Volpi
				});
				var $mask = $strip.wrap("<div class='mask'></div>");
				var $tickercontainer = $strip.parent().wrap("<div class='tickercontainer'></div>");								
				var containerHeight = $strip.parent().parent().height();	//a.k.a. 'mask' width 	
				$strip.height(stripHeight);			
				var totalTravel = stripHeight;
				var defTiming = totalTravel/settings.travelocity;	// thanks to Scott Waye		
				function scrollnews(spazio, tempo){
				$strip.animate({top: '-='+ spazio}, tempo, "linear", function(){$strip.css("top", containerHeight); scrollnews(totalTravel, defTiming);});
				}
				scrollnews(totalTravel, defTiming);				
				$strip.hover(function(){
				jQuery(this).stop();
				},
				function(){
				var offset = jQuery(this).offset();
				var residualSpace = offset.top + stripHeight;
				var residualTime = residualSpace/settings.travelocity;
				scrollnews(residualSpace, residualTime);
				});			
		});	
};

 $(window).scroll(function() {    
    var scroll = $(window).scrollTop();
     //console.log(scroll);
    if (scroll >= 540) {
        //console.log('a');
        $(".brand-cart-sidebar").addClass("brand-cart-sidebar-fixed");
    } else {
        //console.log('a');
        $(".brand-cart-sidebar").removeClass("brand-cart-sidebar-fixed");
    }
}); 
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();
     //console.log(scroll);
    if (scroll >= 540) {
        //console.log('a');
        $(".brand-menu-sidebar").addClass("brand-menu-sidebar-fixed");
    } else {
        //console.log('a');
        $(".brand-menu-sidebar").removeClass("brand-menu-sidebar-fixed");
    }
}); 
        
                    $(document).ready(function(){
                    $('.btn1').click(function(){
                            $('.spinner1').show();
                            $.ajax({
                            
                         success:function(result){
                            $('.btn1').hide();
                            
                        } })
                });
                });
                           $(document).on('click', '.number-spinner button', function () {    
                        var btn = $(this),
                        oldValue = btn.closest('.number-spinner').find('input').val().trim(),
                        newVal = 0;
                         if (btn.attr('data-dir') == 'up') {
                                newVal = parseInt(oldValue) + 1;
                        } else {
                                if (oldValue > 1) {
                                        newVal = parseInt(oldValue) - 1;
                                } else {
                                        newVal=1;
                                        $('.spinner1').hide();
                                        $('.btn1').show();
                                }
                                }
                        btn.closest('.number-spinner').find('input').val(newVal);
                       
        
                    })
                       $(document).ready(function(){
                        $(".btn1").click(function(){
                        var panel=$("#panel1").html();
                        $.ajax({
                          url:"spinner1.jsp",                          
                          type:"post",
                          data:{"panel":panel},
                          beforeSend:function()
                          {
                              $("#ajaxorder").html("<img src='images/preloader.gif' height='30px' width='30px'> ");
                          },
                          success:function(res)
                          {
                              $("#ajaxorder").show();
                              $("#ajaxorder").html(res);
                              $("#ajaxspinner").show();
                              
                              
                           },
                          error:function()
                          {
                               $("#ajaxorder").html("Error in ajax");
                          }
                          
                      });
                      
                  });
                  $('#plus').on('click',function(){
                      var btn = $(this),
                        oldValue = btn.closest('.number-spinner').find('#text').val().trim(),
                        newVal = 0;
                         if (btn.attr('data-dir') == 'up') {
                                newVal = parseInt(oldValue) + 1;
                        } else {
                                if (oldValue > 1) {
                                        newVal = parseInt(oldValue) - 1;
                                } else {
                                        newVal=1;
                                        $('.spinner1').hide();
                                        $('.btn1').show();
                                }
                                }             
                               $('#textin').val(newVal);
                      //alert(newVal);
                       
                  });
                   });
                  $(document).ready(function(){
                   $('#minus').on('click',function(){
                      var btn = $(this),
                        oldValue = btn.closest('.number-spinner').find('#text').val().trim(),
                        newVal = 0;
                         if (btn.attr('data-dir') == 'up') {
                                newVal = parseInt(oldValue) + 1;
                        } else {
                                if (oldValue > 1) {
                                        newVal = parseInt(oldValue) - 1;
                                } else {
                                        newVal=1;
                                        $('.spinner1').hide();
                                        $('.btn1').show();
                                        $('#ajaxspinner').hide();
                                        $("#ajaxorder").hide();
                                }
                                }             
                               $('#textin').val(newVal);
                      //alert(newVal);
                       
                  });
                   });

   </script>         
</body>
</html>