<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.db.Conn"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="../dist/css/vendor/bootstrap.min.css" rel="stylesheet">
<!-- Loading Flat UI -->
<link href="css/flat-ui.css" rel="stylesheet">
<!-- Custom CSS -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet prefetch">
<link href="css/style.css" rel="stylesheet">

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
//String strChecked="checked";
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

					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-user"></i>&nbsp;&nbsp; Profile <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="profile.html"> View Profile </a></li>
							<li><a href="edit-profile.html"> Edit Profile </a></li>
							<li><a href="upload.html"> Upload Resume </a></li>
						</ul></li>
					<li><a href="account.html"> <i class="fa fa-briefcase"></i>&nbsp;&nbsp;Jobs
					</a></li>
					<li><a href="account.html"> <i class="fa fa-gear"></i>&nbsp;&nbsp;Account
					</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Page Content -->

	<section class="content" style="padding-top: 80px;">
		<form accept-charset="utf-8" action="profile-update.jsp">
			<div class="container">
				<!--Basic Info-->
				<div class="panel panel-default">
					<div class="panel-heading" id="">
						<h3 class="panel-title">Basic Information</h3>
					</div>
					<div class="panel-body">
						<form>
							<div class="row">
								<div class="col-md-6 col-sm-12 row-space-1">
									<label class="control-label" for="">First Name</label>
									<div id="">
										<input type="text" class="form-control" id="" name="firstName"
											placeholder="" value="<%=rs.getString(3)%>">>
									</div>
								</div>
								<div class="col-md-6 col-sm-12 row-space-1">
									<label class="control-label" for="">Last Name</label>
									<div id="">
										<input type="text" class="form-control" id="" name="lastName"
											placeholder="" value="<%=rs.getString(4)%>">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-sm-12 row-space-1">
									<label class="control-label" for="">Email</label>
									<div id="">
										<input type="email" class="form-control" id="" name="email"
											placeholder="" value="<%=rs.getString(1)%>">
									</div>
								</div>
								<div class="col-md-6 col-sm-12 row-space-1">
									<label class="control-label" for="">Phone Number</label>
									<div id="">
										<input type="tel" class="form-control" id="" name="telephone"
											placeholder="" value="<%=rs.getString(5)%>">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Address (Optional)</label>
									<div id="">
										<input type="text" class="form-control" id="" name="address"
											placeholder="e.g., 1652 Stockton St"
											value="<%=rs.getString(6)%>">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<label for="" class="control-label">Summary</label>
								</div>
								<div class="col-sm-12 row-space-1">
									<textarea class="form-control" name="summary"
										placeholder="describe yourself - skill sets, experience, expectation, etc."
										style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(7)%></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Expected Job Title
										(Optional)</label>
									<div id="">
										<input type="text" class="form-control" id=""
											name="expectedJob" placeholder="e.g., Product Manager"
											value="<%=rs.getString(8)%>">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

				<!--Education record-->
				<div class="panel panel-default">
					<div class="panel-heading" id="">
						<h3 class="panel-title">Education Record</h3>
					</div>
					<div class="panel-body">
						<form>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">School Name</label>
									<div id="">
										<input type="text" class="form-control" id=""
											name="schoolName" placeholder=""
											value="<%=rs.getString(10)%>">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Start Date</label>
								</div>
							</div>
							<div class="row">

								<div class="col-md-4 col-sm-6 col-xs-12">
									<select id="" name="schoolStartMonth"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(11)%></option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-md-2 col-sm-4 col-xs-12">
									<select name="schoolStartYear" id="" type="singleselect"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(12)%></option>
										<option value="2016">2016</option>
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>
										<option value="2002">2002</option>
										<option value="2001">2001</option>
										<option value="2000">2000</option>
										<option value="1999">1999</option>
										<option value="1998">1998</option>
										<option value="1997">1997</option>
										<option value="1996">1996</option>
										<option value="1995">1995</option>
										<option value="1994">1994</option>
										<option value="1993">1993</option>
										<option value="1992">1992</option>
										<option value="1991">1991</option>
										<option value="1990">1990</option>
										<option value="1989">1989</option>
										<option value="1988">1988</option>
										<option value="1987">1987</option>
										<option value="1986">1986</option>
										<option value="1985">1985</option>
										<option value="1984">1984</option>
										<option value="1983">1983</option>
										<option value="1982">1982</option>
										<option value="1981">1981</option>
										<option value="1980">1980</option>
										<option value="1979">1979</option>
										<option value="1978">1978</option>
										<option value="1977">1977</option>
										<option value="1976">1976</option>
										<option value="1975">1975</option>
										<option value="1974">1974</option>
										<option value="1973">1973</option>
										<option value="1972">1972</option>
										<option value="1971">1971</option>
										<option value="1970">1970</option>
										<option value="1969">1969</option>
										<option value="1968">1968</option>
										<option value="1967">1967</option>
										<option value="1966">1966</option>
										<option value="1965">1965</option>
										<option value="1964">1964</option>
										<option value="1963">1963</option>
										<option value="1962">1962</option>
										<option value="1961">1961</option>
										<option value="1960">1960</option>
										<option value="1959">1959</option>
										<option value="1958">1958</option>
										<option value="1957">1957</option>
										<option value="1956">1956</option>
										<option value="1955">1955</option>
										<option value="1954">1954</option>
										<option value="1953">1953</option>
										<option value="1952">1952</option>
										<option value="1951">1951</option>
										<option value="1950">1950</option>
										<option value="1949">1949</option>
										<option value="1948">1948</option>
										<option value="1947">1947</option>
										<option value="1946">1946</option>
										<option value="1945">1945</option>
										<option value="1944">1944</option>
										<option value="1943">1943</option>
										<option value="1942">1942</option>
										<option value="1941">1941</option>
										<option value="1940">1940</option>
										<option value="1939">1939</option>
										<option value="1938">1938</option>
										<option value="1937">1937</option>
										<option value="1936">1936</option>
										<option value="1935">1935</option>
										<option value="1934">1934</option>
										<option value="1933">1933</option>
										<option value="1932">1932</option>
										<option value="1931">1931</option>
										<option value="1930">1930</option>
										<option value="1929">1929</option>
										<option value="1928">1928</option>
										<option value="1927">1927</option>
										<option value="1926">1926</option>
										<option value="1925">1925</option>
										<option value="1924">1924</option>
										<option value="1923">1923</option>
										<option value="1922">1922</option>
										<option value="1921">1921</option>
										<option value="1920">1920</option>
										<option value="1919">1919</option>
										<option value="1918">1918</option>
										<option value="1917">1917</option>
										<option value="1916">1916</option>
										<option value="1915">1915</option>
										<option value="1914">1914</option>
										<option value="1913">1913</option>
										<option value="1912">1912</option>
										<option value="1911">1911</option>
										<option value="1910">1910</option>
										<option value="1909">1909</option>
										<option value="1908">1908</option>
										<option value="1907">1907</option>
										<option value="1906">1906</option>
										<option value="1905">1905</option>
										<option value="1904">1904</option>
										<option value="1903">1903</option>
										<option value="1902">1902</option>
										<option value="1901">1901</option>
										<option value="1900">1900</option>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Graduate Date
										(estimate if attending)</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-sm-6 col-xs-12">
									<select id="" name="schoolEndMonth"
										class="form-control select select-default">
										<option value="0"><%=rs.getString(13)%></option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-md-2 col-sm-4 col-xs-12">
									<select name="schoolEndYear" id="" type="singleselect"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(14)%></option>
										<option value="2016">2016</option>
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>
										<option value="2002">2002</option>
										<option value="2001">2001</option>
										<option value="2000">2000</option>
										<option value="1999">1999</option>
										<option value="1998">1998</option>
										<option value="1997">1997</option>
										<option value="1996">1996</option>
										<option value="1995">1995</option>
										<option value="1994">1994</option>
										<option value="1993">1993</option>
										<option value="1992">1992</option>
										<option value="1991">1991</option>
										<option value="1990">1990</option>
										<option value="1989">1989</option>
										<option value="1988">1988</option>
										<option value="1987">1987</option>
										<option value="1986">1986</option>
										<option value="1985">1985</option>
										<option value="1984">1984</option>
										<option value="1983">1983</option>
										<option value="1982">1982</option>
										<option value="1981">1981</option>
										<option value="1980">1980</option>
										<option value="1979">1979</option>
										<option value="1978">1978</option>
										<option value="1977">1977</option>
										<option value="1976">1976</option>
										<option value="1975">1975</option>
										<option value="1974">1974</option>
										<option value="1973">1973</option>
										<option value="1972">1972</option>
										<option value="1971">1971</option>
										<option value="1970">1970</option>
										<option value="1969">1969</option>
										<option value="1968">1968</option>
										<option value="1967">1967</option>
										<option value="1966">1966</option>
										<option value="1965">1965</option>
										<option value="1964">1964</option>
										<option value="1963">1963</option>
										<option value="1962">1962</option>
										<option value="1961">1961</option>
										<option value="1960">1960</option>
										<option value="1959">1959</option>
										<option value="1958">1958</option>
										<option value="1957">1957</option>
										<option value="1956">1956</option>
										<option value="1955">1955</option>
										<option value="1954">1954</option>
										<option value="1953">1953</option>
										<option value="1952">1952</option>
										<option value="1951">1951</option>
										<option value="1950">1950</option>
										<option value="1949">1949</option>
										<option value="1948">1948</option>
										<option value="1947">1947</option>
										<option value="1946">1946</option>
										<option value="1945">1945</option>
										<option value="1944">1944</option>
										<option value="1943">1943</option>
										<option value="1942">1942</option>
										<option value="1941">1941</option>
										<option value="1940">1940</option>
										<option value="1939">1939</option>
										<option value="1938">1938</option>
										<option value="1937">1937</option>
										<option value="1936">1936</option>
										<option value="1935">1935</option>
										<option value="1934">1934</option>
										<option value="1933">1933</option>
										<option value="1932">1932</option>
										<option value="1931">1931</option>
										<option value="1930">1930</option>
										<option value="1929">1929</option>
										<option value="1928">1928</option>
										<option value="1927">1927</option>
										<option value="1926">1926</option>
										<option value="1925">1925</option>
										<option value="1924">1924</option>
										<option value="1923">1923</option>
										<option value="1922">1922</option>
										<option value="1921">1921</option>
										<option value="1920">1920</option>
										<option value="1919">1919</option>
										<option value="1918">1918</option>
										<option value="1917">1917</option>
										<option value="1916">1916</option>
										<option value="1915">1915</option>
										<option value="1914">1914</option>
										<option value="1913">1913</option>
										<option value="1912">1912</option>
										<option value="1911">1911</option>
										<option value="1910">1910</option>
										<option value="1909">1909</option>
										<option value="1908">1908</option>
										<option value="1907">1907</option>
										<option value="1906">1906</option>
										<option value="1905">1905</option>
										<option value="1904">1904</option>
										<option value="1903">1903</option>
										<option value="1902">1902</option>
										<option value="1901">1901</option>
										<option value="1900">1900</option>
									</select>
								</div>
								<div class="col-md-6 col-sm-2 col-xs-12"></div>
							</div>

							<div class="row">
								<div class="col-md-6 col-sm-12 row-space-1">
									<label class="control-label" for="">Degree</label>
									<div id="">
										<select name="schoolDegree" id="" type="singleselect"
											aria-describedby=""
											class="form-control select select-default"> Other
											<option value="none" selected=""><%=rs.getString(15)%></option>
											<option value="High School">High School</option>
											<option value="Associateâs Degree">Associateâs
												Degree</option>
											<option value="Bachelorâs Degree">Bachelorâs
												Degree</option>
											<option value="Masterâs Degree">Masterâs Degree</option>
											<option value="Master of Business Administration (M.B.A.)">Master
												of Business Administration (M.B.A.)</option>
											<option value="Juris Doctor (J.D.)">Juris Doctor
												(J.D.)</option>
											<option value="Doctor of Medicine (M.D.)">Doctor of
												Medicine (M.D.)</option>
											<option value="Doctor of Philosophy (Ph.D.)">Doctor
												of Philosophy (Ph.D.)</option>
											<option value="Engineerâs Degree">Engineerâs
												Degree</option>
											<option value="other">Other</option>
										</select>
									</div>
								</div>

								<div class="col-md-6 col-sm-12 row-space-1">
									<label class="control-label" for="">Major</label>
									<div id="">
										<input type="text" class="form-control" id=""
											name="schoolMajor" placeholder=""
											value="<%=rs.getString(16)%>">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>



				<!--Work Experience-->
				<div class="panel panel-default">
					<div class="panel-heading" id="">
						<h3 class="panel-title">Work Experience (Most Recently)</h3>
					</div>
					<div class="panel-body">
						<form>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Employer</label>
									<div id="">
										<input type="text" class="form-control" id=""
											name="workCompanyName" placeholder=""
											value="<%=rs.getString(17)%>">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Job Title</label>
									<div id="">
										<input type="text" class="form-control" id=""
											name="workJobTitle" placeholder=""
											value="<%=rs.getString(18)%>">
									</div>
								</div>
							</div>


							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Start Date</label>
								</div>
							</div>
							<div class="row">

								<div class="col-md-4 col-sm-6 col-xs-12">
									<select id="" name="workStartDate"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(19)%></option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-md-2 col-sm-4 col-xs-12">
									<select name="workStartYear" id="" type="singleselect"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(20)%></option>
										<option value="2016">2016</option>
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>
										<option value="2002">2002</option>
										<option value="2001">2001</option>
										<option value="2000">2000</option>
										<option value="1999">1999</option>
										<option value="1998">1998</option>
										<option value="1997">1997</option>
										<option value="1996">1996</option>
										<option value="1995">1995</option>
										<option value="1994">1994</option>
										<option value="1993">1993</option>
										<option value="1992">1992</option>
										<option value="1991">1991</option>
										<option value="1990">1990</option>
										<option value="1989">1989</option>
										<option value="1988">1988</option>
										<option value="1987">1987</option>
										<option value="1986">1986</option>
										<option value="1985">1985</option>
										<option value="1984">1984</option>
										<option value="1983">1983</option>
										<option value="1982">1982</option>
										<option value="1981">1981</option>
										<option value="1980">1980</option>
										<option value="1979">1979</option>
										<option value="1978">1978</option>
										<option value="1977">1977</option>
										<option value="1976">1976</option>
										<option value="1975">1975</option>
										<option value="1974">1974</option>
										<option value="1973">1973</option>
										<option value="1972">1972</option>
										<option value="1971">1971</option>
										<option value="1970">1970</option>
										<option value="1969">1969</option>
										<option value="1968">1968</option>
										<option value="1967">1967</option>
										<option value="1966">1966</option>
										<option value="1965">1965</option>
										<option value="1964">1964</option>
										<option value="1963">1963</option>
										<option value="1962">1962</option>
										<option value="1961">1961</option>
										<option value="1960">1960</option>
										<option value="1959">1959</option>
										<option value="1958">1958</option>
										<option value="1957">1957</option>
										<option value="1956">1956</option>
										<option value="1955">1955</option>
										<option value="1954">1954</option>
										<option value="1953">1953</option>
										<option value="1952">1952</option>
										<option value="1951">1951</option>
										<option value="1950">1950</option>
										<option value="1949">1949</option>
										<option value="1948">1948</option>
										<option value="1947">1947</option>
										<option value="1946">1946</option>
										<option value="1945">1945</option>
										<option value="1944">1944</option>
										<option value="1943">1943</option>
										<option value="1942">1942</option>
										<option value="1941">1941</option>
										<option value="1940">1940</option>
										<option value="1939">1939</option>
										<option value="1938">1938</option>
										<option value="1937">1937</option>
										<option value="1936">1936</option>
										<option value="1935">1935</option>
										<option value="1934">1934</option>
										<option value="1933">1933</option>
										<option value="1932">1932</option>
										<option value="1931">1931</option>
										<option value="1930">1930</option>
										<option value="1929">1929</option>
										<option value="1928">1928</option>
										<option value="1927">1927</option>
										<option value="1926">1926</option>
										<option value="1925">1925</option>
										<option value="1924">1924</option>
										<option value="1923">1923</option>
										<option value="1922">1922</option>
										<option value="1921">1921</option>
										<option value="1920">1920</option>
										<option value="1919">1919</option>
										<option value="1918">1918</option>
										<option value="1917">1917</option>
										<option value="1916">1916</option>
										<option value="1915">1915</option>
										<option value="1914">1914</option>
										<option value="1913">1913</option>
										<option value="1912">1912</option>
										<option value="1911">1911</option>
										<option value="1910">1910</option>
										<option value="1909">1909</option>
										<option value="1908">1908</option>
										<option value="1907">1907</option>
										<option value="1906">1906</option>
										<option value="1905">1905</option>
										<option value="1904">1904</option>
										<option value="1903">1903</option>
										<option value="1902">1902</option>
										<option value="1901">1901</option>
										<option value="1900">1900</option>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">End Date (Optional)</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-sm-6 col-xs-12">
									<select id="" name="workEndMonth"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(21)%></option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-md-2 col-sm-4 col-xs-12">
									<select name="workEndYear" id="" type="singleselect"
										class="form-control select select-default">
										<option value="" selected="selected"><%=rs.getString(22)%></option>
										<option value="2016">2016</option>
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>
										<option value="2002">2002</option>
										<option value="2001">2001</option>
										<option value="2000">2000</option>
										<option value="1999">1999</option>
										<option value="1998">1998</option>
										<option value="1997">1997</option>
										<option value="1996">1996</option>
										<option value="1995">1995</option>
										<option value="1994">1994</option>
										<option value="1993">1993</option>
										<option value="1992">1992</option>
										<option value="1991">1991</option>
										<option value="1990">1990</option>
										<option value="1989">1989</option>
										<option value="1988">1988</option>
										<option value="1987">1987</option>
										<option value="1986">1986</option>
										<option value="1985">1985</option>
										<option value="1984">1984</option>
										<option value="1983">1983</option>
										<option value="1982">1982</option>
										<option value="1981">1981</option>
										<option value="1980">1980</option>
										<option value="1979">1979</option>
										<option value="1978">1978</option>
										<option value="1977">1977</option>
										<option value="1976">1976</option>
										<option value="1975">1975</option>
										<option value="1974">1974</option>
										<option value="1973">1973</option>
										<option value="1972">1972</option>
										<option value="1971">1971</option>
										<option value="1970">1970</option>
										<option value="1969">1969</option>
										<option value="1968">1968</option>
										<option value="1967">1967</option>
										<option value="1966">1966</option>
										<option value="1965">1965</option>
										<option value="1964">1964</option>
										<option value="1963">1963</option>
										<option value="1962">1962</option>
										<option value="1961">1961</option>
										<option value="1960">1960</option>
										<option value="1959">1959</option>
										<option value="1958">1958</option>
										<option value="1957">1957</option>
										<option value="1956">1956</option>
										<option value="1955">1955</option>
										<option value="1954">1954</option>
										<option value="1953">1953</option>
										<option value="1952">1952</option>
										<option value="1951">1951</option>
										<option value="1950">1950</option>
										<option value="1949">1949</option>
										<option value="1948">1948</option>
										<option value="1947">1947</option>
										<option value="1946">1946</option>
										<option value="1945">1945</option>
										<option value="1944">1944</option>
										<option value="1943">1943</option>
										<option value="1942">1942</option>
										<option value="1941">1941</option>
										<option value="1940">1940</option>
										<option value="1939">1939</option>
										<option value="1938">1938</option>
										<option value="1937">1937</option>
										<option value="1936">1936</option>
										<option value="1935">1935</option>
										<option value="1934">1934</option>
										<option value="1933">1933</option>
										<option value="1932">1932</option>
										<option value="1931">1931</option>
										<option value="1930">1930</option>
										<option value="1929">1929</option>
										<option value="1928">1928</option>
										<option value="1927">1927</option>
										<option value="1926">1926</option>
										<option value="1925">1925</option>
										<option value="1924">1924</option>
										<option value="1923">1923</option>
										<option value="1922">1922</option>
										<option value="1921">1921</option>
										<option value="1920">1920</option>
										<option value="1919">1919</option>
										<option value="1918">1918</option>
										<option value="1917">1917</option>
										<option value="1916">1916</option>
										<option value="1915">1915</option>
										<option value="1914">1914</option>
										<option value="1913">1913</option>
										<option value="1912">1912</option>
										<option value="1911">1911</option>
										<option value="1910">1910</option>
										<option value="1909">1909</option>
										<option value="1908">1908</option>
										<option value="1907">1907</option>
										<option value="1906">1906</option>
										<option value="1905">1905</option>
										<option value="1904">1904</option>
										<option value="1903">1903</option>
										<option value="1902">1902</option>
										<option value="1901">1901</option>
										<option value="1900">1900</option>
									</select>
								</div>
								<div class="col-md-6 col-sm-2 col-xs-12"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<label for="" class="control-label">Responsibilities</label>
								</div>
								<div class="col-sm-12 row-space-1">
									<textarea class="form-control" name="workJobResponsibility"
										placeholder="" style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(23)%></textarea>
								</div>
							</div>

						</form>
					</div>
				</div>

				<!--Project-->
				<div class="panel panel-default">
					<div class="panel-heading" id="">
						<h3 class="panel-title">Project</h3>
					</div>
					<div class="panel-body">
						<form>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<label class="control-label" for="">Project Name</label>
									<div id="">
										<input type="text" class="form-control" id=""
											name="projectName" placeholder=""
											value="<%=rs.getString(24)%>">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<label for="" class="control-label">Project Description</label>
								</div>
								<div class="col-sm-12 row-space-1">
									<textarea class="form-control" name="projectDescription"
										placeholder="" style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(25)%></textarea>
								</div>
							</div>

							<!--
                <div class="row">
                  <div class="col-sm-12 row-space-1">
                    <label class="control-label" for="">Project URL (if applicable)</label>
                    <div id="">
                      <input type="text" class="form-control" id="" placeholder="">
                    </div>
                  </div>
                </div>
                
                
                <div class="row">
                  <div class="col-sm-12 row-space-1">
                    <label class="control-label" for="">Start Date</label>
                  </div>
                </div>
                <div class="row">
                
                  <div class="col-md-4 col-sm-6 col-xs-12">
												<select id="" name="" class="form-control select select-default">
													<option value="1">January</option>
													<option value="2">February</option>
													<option value="3">March</option>
													<option value="4">April</option>
													<option value="5">May</option>
													<option value="6">June</option>
													<option value="7">July</option>
													<option value="8">August</option>
													<option value="9">September</option>
													<option value="10">October</option>
													<option value="11">November</option>
													<option value="12">December</option>
												</select>
                       </div>
                       <div class="col-md-2 col-sm-4 col-xs-12">
                        <select name="" id="" type="singleselect"  class="form-control select select-default">
                        <option value="" selected="selected">-</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                        <option value="1959">1959</option>
                        <option value="1958">1958</option>
                        <option value="1957">1957</option>
                        <option value="1956">1956</option>
                        <option value="1955">1955</option>
                        <option value="1954">1954</option>
                        <option value="1953">1953</option>
                        <option value="1952">1952</option>
                        <option value="1951">1951</option>
                        <option value="1950">1950</option>
                        <option value="1949">1949</option>
                        <option value="1948">1948</option>
                        <option value="1947">1947</option>
                        <option value="1946">1946</option>
                        <option value="1945">1945</option>
                        <option value="1944">1944</option>
                        <option value="1943">1943</option>
                        <option value="1942">1942</option>
                        <option value="1941">1941</option>
                        <option value="1940">1940</option>
                        <option value="1939">1939</option>
                        <option value="1938">1938</option>
                        <option value="1937">1937</option>
                        <option value="1936">1936</option>
                        <option value="1935">1935</option>
                        <option value="1934">1934</option>
                        <option value="1933">1933</option>
                        <option value="1932">1932</option>
                        <option value="1931">1931</option>
                        <option value="1930">1930</option>
                        <option value="1929">1929</option>
                        <option value="1928">1928</option>
                        <option value="1927">1927</option>
                        <option value="1926">1926</option>
                        <option value="1925">1925</option>
                        <option value="1924">1924</option>
                        <option value="1923">1923</option>
                        <option value="1922">1922</option>
                        <option value="1921">1921</option>
                        <option value="1920">1920</option>
                        <option value="1919">1919</option>
                        <option value="1918">1918</option>
                        <option value="1917">1917</option>
                        <option value="1916">1916</option>
                        <option value="1915">1915</option>
                        <option value="1914">1914</option>
                        <option value="1913">1913</option>
                        <option value="1912">1912</option>
                        <option value="1911">1911</option>
                        <option value="1910">1910</option>
                        <option value="1909">1909</option>
                        <option value="1908">1908</option>
                        <option value="1907">1907</option>
                        <option value="1906">1906</option>
                        <option value="1905">1905</option>
                        <option value="1904">1904</option>
                        <option value="1903">1903</option>
                        <option value="1902">1902</option>
                        <option value="1901">1901</option>
                        <option value="1900">1900</option>
                      </select>
                      </div>
                      </div>
                      <div class="row">
                  <div class="col-sm-12 row-space-1">
                    <label class="control-label" for="">End Date (Optional)</label>
                  </div>
                </div>
                      <div class="row">
                  <div class="col-md-4 col-sm-6 col-xs-12">
												<select id="" name="" class="form-control select select-default">
													<option value="1">January</option>
													<option value="2">February</option>
													<option value="3">March</option>
													<option value="4">April</option>
													<option value="5">May</option>
													<option value="6">June</option>
													<option value="7">July</option>
													<option value="8">August</option>
													<option value="9">September</option>
													<option value="10">October</option>
													<option value="11">November</option>
													<option value="12">December</option>
												</select>
                       </div>
                       <div class="col-md-2 col-sm-4 col-xs-12">
                        <select name="" id="" type="singleselect"  class="form-control select select-default">
                        <option value="" selected="selected">-</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                        <option value="1959">1959</option>
                        <option value="1958">1958</option>
                        <option value="1957">1957</option>
                        <option value="1956">1956</option>
                        <option value="1955">1955</option>
                        <option value="1954">1954</option>
                        <option value="1953">1953</option>
                        <option value="1952">1952</option>
                        <option value="1951">1951</option>
                        <option value="1950">1950</option>
                        <option value="1949">1949</option>
                        <option value="1948">1948</option>
                        <option value="1947">1947</option>
                        <option value="1946">1946</option>
                        <option value="1945">1945</option>
                        <option value="1944">1944</option>
                        <option value="1943">1943</option>
                        <option value="1942">1942</option>
                        <option value="1941">1941</option>
                        <option value="1940">1940</option>
                        <option value="1939">1939</option>
                        <option value="1938">1938</option>
                        <option value="1937">1937</option>
                        <option value="1936">1936</option>
                        <option value="1935">1935</option>
                        <option value="1934">1934</option>
                        <option value="1933">1933</option>
                        <option value="1932">1932</option>
                        <option value="1931">1931</option>
                        <option value="1930">1930</option>
                        <option value="1929">1929</option>
                        <option value="1928">1928</option>
                        <option value="1927">1927</option>
                        <option value="1926">1926</option>
                        <option value="1925">1925</option>
                        <option value="1924">1924</option>
                        <option value="1923">1923</option>
                        <option value="1922">1922</option>
                        <option value="1921">1921</option>
                        <option value="1920">1920</option>
                        <option value="1919">1919</option>
                        <option value="1918">1918</option>
                        <option value="1917">1917</option>
                        <option value="1916">1916</option>
                        <option value="1915">1915</option>
                        <option value="1914">1914</option>
                        <option value="1913">1913</option>
                        <option value="1912">1912</option>
                        <option value="1911">1911</option>
                        <option value="1910">1910</option>
                        <option value="1909">1909</option>
                        <option value="1908">1908</option>
                        <option value="1907">1907</option>
                        <option value="1906">1906</option>
                        <option value="1905">1905</option>
                        <option value="1904">1904</option>
                        <option value="1903">1903</option>
                        <option value="1902">1902</option>
                        <option value="1901">1901</option>
                        <option value="1900">1900</option>
                      </select>
                      </div>
                      <div class="col-md-6 col-sm-2 col-xs-12">
                      <div class="form-control">
                       <label><input type="checkbox" ng-model="" name="" id="" value="">
                      In Progress </label>
                      </div>
                      </div>
                      </div>
                <div class="row">
                  <div class="col-sm-12">
                    <label for="" class="control-label">Responsibilities</label>
                  </div>
                  <div class="col-sm-12 row-space-1">
                    <textarea class="form-control" name="" placeholder="" style="width:100%; max-width:100%;" rows="6"></textarea>
                  </div>
                </div>-->
						</form>
					</div>
				</div>


				<!--Skills-->
				<div class="panel panel-default">
					<div class="panel-heading" id="">
						<h3 class="panel-title">Skills & Tools (Comma Separated)</h3>
					</div>
					<div class="panel-body">
						<form>
							<div class="row">
								<div class="col-sm-12 row-space-1">
									<div id="">
										<textarea class="form-control" name="" placeholder=""
											style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(9)%></textarea>

									</div>
								</div>
							</div>



						</form>
					</div>
				</div>

				<div class="row row-space-top-3">
					<div class="col-sm-6 col-xs-12">
						<button class="btn btn-primary btn-block btn-wide text-capitalize"
							type="submit">Save</button>
					</div>
					<div class="col-sm-6 col-xs-12">
						<a ng-click="cancelForm()"
							class="btn btn-block btn-default text-capitalize"> Cancel </a>
					</div>
				</div>
				<br>
				<br>
				<br>

			</div>
		</form>
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
            out.print(show.errorBox("Database Error，please log in again。","Oops"));
        }
%>
</body>
</html>