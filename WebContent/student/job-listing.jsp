<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.db.Conn"%>
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
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
							<i class="fa fa-user"></i>&nbsp;&nbsp; Profile <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="profile-view.jsp"> View Profile </a></li>
							<li><a href="profile-edit.jsp"> Edit Profile </a></li>
							<li><a href="upload.html"> Upload Resume </a></li>
						</ul></li>
					<li class=" active">
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
			<div class="row">
				<div class="col-md-3 col-sm-4">
					<!-- #### Side Nav #### -->
					<div id="sidenav" class="panel">
						<div class="panel panel-primary text-left">
							<div class="panel-heading text-capitalize text-center">Search</div>
							<div class="panel-body">
								<form id="jobSearchForm" name="jobSearchForm" method="POST"
									action="job-searching.jsp">
									<fieldset class="text-input-fields">
										<label class="control-label" for="">Job Title</label>
										<div class="input-group">
											<input type="text" class="form-control" value="" name="sjobTitle">
										</div>
										<br> <label class="control-label" for="">Company Name</label>
										<div class="input-group">
											<input type="text" class="form-control" value="" name="scompanyName">
										</div>
										<br> <label class="control-label" for="">Location</label>
										<div class="input-group">
											<input type="text" class="form-control" value="" name="slocation">
											<span class="input-group-btn"> <i class="fa fa-search"></i>
											</span>
										</div>
										<br>
									</fieldset>
									<div class="form-controls">
										<input type="submit" value="Search" name="Submit"
											class="btn btn-primary"> 
										<input type="reset"
											class="btn btn-link" value="Reset">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-8">
					<div class="panel panel-default" id="basics">
						<div class="panel-body">
							<%
								Conn con = new Conn();
								ResultSet rs = con.getRs("SELECT * FROM job");
								while (rs.next()) {
									int jobID = rs.getInt(1);
							%>
							<form action="job-detail.jsp">
								<div class="row">
									<div class="col-md-10 col-sm-12">
										<h3 class="text-uppercase"><%=rs.getString(2)%></h3>
										<h4><%=rs.getString(3)%></h4>
										<h5>
											<i class="fa fa-map-marker"></i>&nbsp;<%=rs.getString(5)%></h5>
										<h5 class="text-muted">Mar 14, 2016</h5>
										<input type="hidden" name="jobID" value="<%=rs.getInt(1)%>">
									</div>
									<div class="col-md-2 col-sm-12 text-center">
										<h1>
											<button
												class="btn btn-primary btn-block btn-wide text-capitalize"
												type="submit">View</button>
										</h1>
									</div>
								</div>
							</form>
							<%
								}
							%>
							<!--               
              <hr>
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <h3 class="text-uppercase">Job Title</h3>
                  <h4>Company Name</h4>
                  <h5><i class="fa fa-map-marker"></i>&nbsp;San Jose, California, United States</h5>
                  <h5 class="text-muted">Mar 14, 2016</h5>
                </div>
                <div class="col-md-2 col-sm-12 text-center">
                  <h1>
                    <a class="btn btn-primary btn-block">
                      View
                    </a>
                  </h1>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <h3 class="text-uppercase">Job Title</h3>
                  <h4>Company Name</h4>
                  <h5><i class="fa fa-map-marker"></i>&nbsp;San Jose, California, United States</h5>
                  <h5 class="text-muted">Mar 14, 2016</h5>
                </div>
                <div class="col-md-2 col-sm-12 text-center">
                  <h1>
                    <a class="btn btn-primary btn-block">
                      View
                    </a>
                  </h1>
                </div>
              </div>
              <hr>
            </div>
          </div>
 -->
							<!--Pagination-->
							<div>
								<ul class="pagination">
									<li class="disabled"><a href="#" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="active"><a href="#"> 1 </a></li>
									<li><a href="#"> 2 </a></li>
									<li><a href="#"> 3 </a></li>
									<li><a href="#"> 4 </a></li>
									<li><a href="#"> 5 </a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</div>
							<!--Flat UI  Pagination-->
							<div class="">
								<ul class="pagination">
									<li class="previous disabled"><a href="#fakelink"
										class="fui-arrow-left"> </a></li>
									<li class="active"><a href="#fakelink"> 1 </a></li>
									<li><a href="#fakelink"> 2 </a></li>
									<li><a href="#fakelink"> 3 </a></li>
									<li><a href="#fakelink"> 4 </a></li>
									<li><a href="#fakelink"> 5 </a></li>
									<li><a href="#fakelink"> 6 </a></li>
									<li><a href="#fakelink"> 7 </a></li>
									<li><a href="#fakelink"> 8 </a></li>
									<li><a href="#fakelink"> 9 </a></li>
									<li><a href="#fakelink"> 10 </a></li>
									<!-- Make dropdown appear above pagination -->
									<li class="pagination-dropdown dropup"><a href="#fakelink"
										class="dropdown-toggle" data-toggle="dropdown"> <i
											class="fui-triangle-up"></i>
									</a> <!-- Dropdown menu -->
										<ul class="dropdown-menu">
											<li><a href="#fakelink"> 10â20 </a></li>
											<li><a href="#fakelink"> 20â30 </a></li>
											<li><a href="#fakelink"> 40â50 </a></li>
										</ul></li>
									<li class="next"><a href="#fakelink"
										class="fui-arrow-right"> </a></li>
								</ul>
							</div>
						</div>
					</div>
					<script>
						window.prettyPrint && prettyPrint();
					</script>
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

</body>
</html>