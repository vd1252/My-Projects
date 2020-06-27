<?php
include('connect.php');

session_start();

if(isset($_SESSION['userid'])){
    require_once("user-header.php");
}else if(isset($_SESSION['supplierid']))  {  
    require_once("supplier-header.php");
}
else{
    require_once("header.php");
}
?>




<!DOCTYPE HTML>
<html>



<body>


    <div class="global-wrap">


       

        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row row-wrap">
              
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="img/avatar-m.png" alt="Image Alternative text" title="Good job" />
                        <h4>Lovepreet Parmar</h4>
                        <p class="team-member-position">Team Lead/Administrator/Front-end/Backend Developer</p>
                      
                        <ul class="team-member-social">
                            <li>
                                <a class="fa fa-git" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="https://twitter.com/ParmarLovepreet"></a>
                            </li>
                            <li>
                                <a class="fa fa-facebook" href="https://www.facebook.com/lplovepreet"></a>
                            </li>
                            <li>
                                <a class="fa fa-instagram" href="https://www.instagram.com/lovepreet.php"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin" href=""></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="img/avatar-f.png" alt="Image Alternative text" title="Flare lens flare" />
                        <h4>Dharmesha Upadhaya </h4>
                        <p class="team-member-position">Quality Assurance Tester</p> <br>
                        
                        <ul class="team-member-social">
                        <li>
                                <a class="fa fa-git" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-facebook" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-instagram" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin" href="#"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="img/avatar-ff.png" alt="Image Alternative text" title="Andrea" />
                        <h4>Shivani</h4>
                        <p class="team-member-position">Backend Developer(Database Management)</p> <br>
                       
                        <ul class="team-member-social">
                        <li>
                                <a class="fa fa-git" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-facebook" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-instagram" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin" href="#"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="img/avatar-ff.png" alt="Image Alternative text" title="AMaze" />
                        <h4>Jyoti Kumari</h4>
                        <p class="team-member-position">Designer/Front-end Developer</p> <br>
                      
                        <ul class="team-member-social">
                        <li>
                                <a class="fa fa-git" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-facebook" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-instagram" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin" href="#"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="img/avatar-ff.png" alt="Image Alternative text" title="Spidy" />
                        <h4>Manisha</h4>
                        <p class="team-member-position">Backend Developer(Database Management)</p> <br>

                        <ul class="team-member-social">
                        <li>
                                <a class="fa fa-git" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-facebook" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-instagram" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin" href="#"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="img/avatar-f.png" alt="Image Alternative text" title="Sevenly Shirts - June 2012" />
                        <h4>Samriti </h4>
                        <p class="team-member-position">Front-end Developer</p> <br>
                       
                        <ul class="team-member-social">
                        <li>
                                <a class="fa fa-git" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-facebook" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-instagram" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin" href="#"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                
                
                
            </div>
            <div class="gap gap-small"></div>
        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



       
</body>

</html>
<?php

include('footer.php');
?>