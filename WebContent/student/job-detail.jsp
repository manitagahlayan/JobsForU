<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Detail - Student View</title>
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
String strEmail=(String)session.getAttribute("email");
String jobID=request.getParameter("jobID");
ResultSet rs=con.getRs("SELECT * FROM job where jobID='"+jobID+"'");
	while(rs.next()){
		
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
        <span class="navbar-brand" style="color: #FFFFFF">Linked<strong>Us</strong>.org </span>
      </div>
      
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <em class="fa fa-user"></em>
              &nbsp; Profile <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="profile-view.jsp">
                  View Profile
                </a>
              </li>
              <li>
                <a href="profile-edit.jsp">
                  Edit Profile
                </a>
              </li>
              <li>
                <a href="upload.html">
                  Upload Resume
                </a>
              </li>
            </ul>
          </li>
          <li class="active">
            <a href="job-listing.jsp">
              <i class="fa fa-briefcase"></i>&nbsp;&nbsp;Jobs
            </a>
          </li>
          <li>
            <a href="account.jsp">
              <i class="fa fa-gear"></i>&nbsp;&nbsp;Account
            </a>
          </li>
        </ul>
      </div>
      <!-- /.navbar-collapse -->
    </div>
  </nav>
  <!-- Page Content -->
  
  <section class="content" style="padding-top: 80px;">
    <div class="container content">
    <!--Breadcrumb-->
    <div>
      <ol class="breadcrumb">
        <li>
          <a href="job-listing.jsp">
            Jobs
          </a>
        </li>
        <li class="active">Job Detail</li>
      </ol>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default" id="basics">
            <div class="panel-body">
              <div class="row">
                <div class="col-sm-3  hidden-xs text-center">
                  <h1><img src="https://placehold.it/60x60" alt="company logo"></h1>
                </div>
                <div class="col-sm-9">
                  <h1 class="text-uppercase"><%=rs.getString(2)%></h1>
                  <h4 class="">
                    <a href="#">
                      <%=rs.getString(3)%>
                    </a>
                  </h4>
                  <p><%=rs.getString(5)%></p>
                  <p class="text-muted">
                    <i class="fa fa-calendar"></i>&nbsp;Posted on March 11, 2016</p>
                  <a href="../../../../<%=rs.getString(4)%>" target="_blank" class="btn btn-primary">
                    Apply on company website
                  </a>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-md-9 col-sm-12">
                <div>
                  <h4>Job Description</h4>
                  <p><%=rs.getString(6)%></p>
                    </div>
                    <br>
                    <div>
                  <h4>Desired Skills and Experience</h4>
                  <p><%=rs.getString(7)%></p>
                    </div>
                    <br>
                    
                </div>
                <div class="col-md-3 col-sm-12">
                  <div class="text-capitalize">
                    <h4>Industry</h4>
                    <p><%=rs.getString(8)%></p>
                  </div>
                  <br>
                  <div class="text-capitalize">
                    <h4>Employment Type</h4>
                    <p><%=rs.getString(9)%></p>
                  </div>
                  <br>
                  <div class="text-capitalize">
                    <h4>experience</h4>
                    <p><%=rs.getString(10)%></p>
                  </div>
                  <br>
                  <div class="text-capitalize">
                    <h4>job function</h4>
                    <p><%=rs.getString(11)%></p>
                  </div>
                  <br>
                  <div>
                    <h4 class="text-capitalize">education</h4>
                    <p><%=rs.getString(12)%></p>
                    
                    </div>
                  <br>
                </div>
              </div>
              
            </div>
          </div>
          <br>
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
	}
%>  
</body>
</html>