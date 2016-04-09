<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.db.Conn"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<!-- Bootstrap Core CSS -->
<link href="../dist/css/vendor/bootstrap.min.css" rel="stylesheet">
<!-- Loading Flat UI -->
<link href="../dist/css/flat-ui.css" rel="stylesheet">
<!-- Custom CSS -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet prefetch">
<link href="../dist/css/style.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<%
Conn con=new Conn();
Show show=new Show();
String strChecked="checked";
String strEmail=(String)session.getAttribute("email");
ResultSet rs=con.getRs("SELECT * FROM student WHERE email='"+strEmail+"'");
        if(rs.next()){
%>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top drop-shadow"
		role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
				</button>
				<span class="navbar-brand" style="color: #FFFFFF">Linked<strong>Us</strong>.org
				</span>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">

					<li class="dropdown"><a href="profile-view.jsp"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-user"></i>&nbsp;&nbsp; Profile <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="profile-view.jsp"> View Profile </a></li>
							<li><a href="profile-edit.jsp"> Edit Profile </a></li>
							<li><a href="upload.html"> Upload Resume </a></li>
						</ul></li>
					<li><a href="job-listing.jsp"> <i class="fa fa-briefcase"></i>&nbsp;&nbsp;Jobs
					</a></li>
					<li class="active"><a href="account.jsp"> <i class="fa fa-gear"></i>&nbsp;&nbsp;Account
					</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Page Content -->

	<section class="content" style="padding-top: 80px;">
		<div class="container content">
    
			<div class="row">
      
      <div class="col-md-10 col-sm-8">
      
					<div class="panel panel-default text-center">
						<div class="panel-body">
							<form class="form-horizontal" role="form" action="account-update.jsp">
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">Email</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="email" class="form-control" id="inputEmail1" placeholder="Email" value="<%=rs.getString(1)%>" disabled>
              </div>
            </div>
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">Old Password</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="password" class="form-control" id="" placeholder="Old Password">
              </div>
            </div>
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">New Password</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="password" class="form-control" id="" placeholder="New Password" name="newPassword">
              </div>
            </div>
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">Repeat Password</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="password" class="form-control" id="" placeholder="Repeat Password">
              </div>
            </div>
            
            
            <div class="form-group">
              <div class="col-lg-offset-2 col-md-offset-3 col-lg-10 col-md-9">
                <button type="submit" class="btn btn-default">Save</button>
              </div>
            </div>
          </form>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-2 col-sm-4">
					<div>
						<a href="stu-login-signup.html" class="btn btn-block btn-danger">Log Out</a>
					</div>
				</div>
				
			</div>
			<script>window.prettyPrint && prettyPrint();</script>
		</div>
	</section>
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="js/vendor/jquery.min.js"></script>
	<script src="js/vendor/video.js"></script>
	<script src="js/flat-ui.min.js"></script>
	<script src="docs/assets/js/prettify.js"></script>
	<script src="docs/assets/js/application.js"></script>
	<script>
          videojs.options.flash.swf = "../js/vendors/video-js.swf"
        </script>
                	<%
        }else{
            out.print("<script>alert('Failed to Connect to Database.');document.location='profile-view.jsp';</script>");
        }
%>
</body>
</html>