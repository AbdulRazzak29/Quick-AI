<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="Quick_AI_01.WebForm13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="font/css/all.css" rel="stylesheet" />
    <link href="boostrap/css/style.css" rel="stylesheet" />
    <link href="boostrap/css/all.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="boostrap/css/jquery.min.js"></script>
    <script src="boostrap/js/jquery.slim.min.js"></script>
    <script src="boostrap/js/popper.min.js"></script>
    <script src="boostrap/js/bootstrap.bundle.min.js"></script>

   <style>
       * {
    font-family: Arial, Helvetica, sans-serif;
}

.container {
    padding: 0px;
    margin: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

.topbar {
    position: fixed;
    background-color: #fff;
    box-shadow: 0 4px 8px 0 rgb(0,0,0,0.08);
    width: 100%;
    height: 85px;
    display: grid;
    grid-template-columns: 2.5fr 8fr 1fr 1fr;
    align-items: center;
    z-index: 1;
}

.logo {
   
    border-right: 1px solid #e0e0e0;
    justify-content: center;
    height: 80px;
    padding-top: 10px;
    width: 260px;
}

.user {
    position: relative;
    width: 50px;
    height: 50px;
}

    .user img {
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
    }

.selectlang {
    float: right;
    padding-right: 30px;
    border-left: 1px solid #e0e0e0;
    padding-top: 20px;
    padding-left: 30px;
    height: 82px;
}

#langbtn {
    border: none;
    background-color: #444444;
    width: 120px;
    height: 40px;
    border-radius: 4px 4px;
    color: white;
}

option {
    background-color: white;
    box-sizing: border-box;
    color: black;
}

#langbtn:hover {
    background-color: #314cc6;
}

.sidebar {
    position: fixed;
    top: 85px;
    width: 260px;
    background-color: #fff;
    overflow-x: hidden;
    margin-right: 0px;
    margin-bottom: 0px;
    box-shadow: 0px 0px 8px 02px rgb(0,0,0,0.5);
    height: 100%
}

    .sidebar ul {
        margin-top: 10px;
        margin-bottom: 10px;
    }

        .sidebar ul li {
            width: 100%;
            list-style: none;
        }

            .sidebar ul li a {
                width: 100%;
                text-decoration: none;
                color: #707070;
                height: 40px;
                display: flex;
                align-items: center;
                font-size:13px;
            }

                .sidebar ul li a i {
                    min-width: 60PX;
                    font-size: 15PX;
                    text-align: center;
                }
                .dropbtn {
  background-color:white;
  color:#6c757d;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color:white;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

:root
{
    --primary-color: white;
    --secondary-color: black;

}
iframe
{
    background-color: white;
    min-height: 300px;
    width: 100%;
    resize: none;
    outline: none;
    padding: 15px;
    margin-bottom: 20px;
    position: relative;
}
button
{
    background-color: var(--primary-color);
    border: 1px solid var(--secondary-color);
    margin: 5px;
    color: var(--secondary-color);
    padding: 5px 8px;
    text-align: center;
    text-decoration: none;
    font-size: 15px;
}
button:focus,button:hover
{
    border: 2px solid #95d3e6;
}
    
body
{
    background-color: var(--primary-color);
    border: none;
    margin: 1px;
    color: var(--secondary-color);
    padding: 5px 8px;
   
    text-decoration: none;
    font-size: 15px;
}
input
{
    background-color: white;

}

.dark-mode {
    --primary-color: #18181a;
    --secondary-color: white;
    
}
.raise:hover,.raise:focus 
{
    box-shadow: 0 0.5em 0.5em -0.4em var(--hover);
    transform: translateY(-0.25em);

}
select:focus,select:hover
{
    border: 1px solid #95d3e6;
}
 #snackbar {
  visibility: hidden;
  min-width: 250px;
  color: white;
  color:red;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: absolute;
  z-index: 1;
  font-size: 15px;
  margin-left:-31px;
  top:500px;
  }

#snackbar.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;

}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header id="header-container" class="fullwidth">
        
                <!-- Header -->
        <div id="header">
            <div class="container">
                <!-- Left Side Content -->
                <div class="left-side">
                    <!-- Logo -->
                    <div id="logo">
                        <a href="http://hype.sociusus.com/">
                                                  <img src="img/hhh.png" alt="Hype" style=" margin-top: 40px;" />
                        </a>
                    </div>

                    <a href="javascript:void(0);" class="header-icon d-none">
                        <i class="fa fa-bars"></i>
                    </a>

                </div>
                <!-- Left Side Content / End -->


                <!-- Right Side Content / End -->
                <div class="right-side">
                                            <div class="header-widget">
                            <a href="#sign-in-dialog" class="popup-with-zoom-anim button ripple-effect">Join Now</a>
                        </div>
                    
<div class="dropdown" style="float:right;    margin-top: -3px;padding-right:10px;border-left: 2px solid #e0e0e0;padding-top:20px;padding-left:10px;height:82px;">
        <label for="Language"></label>
                   <select name="Languge" id="Languge" style="height: auto; background-color: #444;    color: white;">
                         <option value=" en "> EN </option>
                       <option value="en">english</option>
                       <option value=" Arabic "> Arabic </option>
                       <option value="Bangali">Bangali</option>
                       <option value="Bulgarian">Bulgarian</option>
                       <option value="Chinese">Chinese</option>
                       <option value="English">English</option>
                       <option value="French">French</option>
                       <option value="German">German</option>
                       <option value="Hebrew">Hebrew</option>
                       <option value="Hindi">Hindi</option>
                       <option value="Italian">Italian</option>
                       <option value="Japanesh">Japanesh</option>
                       <option value="Polish">Polish</option>
                       <option value="Romanin">Romanian</option>
                       <option value="Russian">Russian</option>
                       <option value="Spanish">Spanish</option>
                       <option value="Swedish">Swedish</option>
                       <option value="Thai">Thai</option>
                       <option value="Turkish">Turkish</option>
                       <option value="Urdu">Urdu</option>
                       <option value="vietnamese">vietnamese</option>
                   </select>
    </div>
                                    </div>
                <!-- Right Side Content / End -->

            </div>
        </div>
        <!-- Header / End -->
    </header>
             
    </form>
</body>
</html>
