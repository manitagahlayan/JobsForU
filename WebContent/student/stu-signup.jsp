<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.string.Str"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="job.Student" scope="request" />
<jsp:setProperty name="student" property="*" />
<%
	Str str = new Str();
	Show show = new Show();
	student.setEmail(str.dbEncode(student.getEmail()));
	student.setPassword(str.dbEncode(student.getPassword()));
	if (student.getPassword().equals("")
			|| student.getEmail().equals("")) {
		out.print("<script>alert('Please fill out the form completely.');document.location='stu-login-signup.html';</script>");
		return;
	} else {

		int intT = 0;
		Data data = new Data();
		intT = data.getRowCount("student WHERE email='"
				+ student.getEmail() + "'");
		if (intT > 0) {
			out.print("<script>alert('Sorry, this email already exists. Please try with another one.');document.location='stu-login-signup.html';</script>");
			return;
		} else {
			intT = data.insert("INSERT INTO student VALUES('"
					+ student.getEmail() + "','"
					+ student.getPassword() + "','" 
					+ " " + "','" 
					+ " "+ "','" 
					+ " " + "','" 
					+ " " + "','" 
							+ " " + "','" 
							+ " "+ "','" 
							+ " " + "','" 
							+ " " + "','"
									+ " " + "','" 
									+ " " + "','" 
									+ " " + "','" 
									+ " " + "','" 
											+ " " + "','" 
											+ " "+ "','" 
											+ " " + "','" 
											+ " " + "','"
													+ " " + "','" 
													+ " "+ "','" 
													+ " " + "','" 
													+ " " + "','"
					+ " " + "','"
					+ " " + "','" + "')");
			if (intT <= 0) {
				out.print("<script>alert('Failed to connect the database.');document.location='stu-login-signup.html';</script>");
				return;
			} else {
				out.print("<script>alert('Register Successed!');document.location='stu-login-signup.html';</script>");
			}
		}
	}
%>
