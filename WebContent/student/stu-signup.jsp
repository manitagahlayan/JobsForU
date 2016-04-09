<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.string.Str"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="job.Student" scope="request" />
<jsp:setProperty name="student" property="*" />
<%
	Str str = new Str();
	student.setEmail(str.dbEncode(student.getEmail()));
	student.setPassword(str.dbEncode(student.getPassword()));
	
	if (student.getPassword().equals("") || student.getEmail().equals("")) {
		out.print("<script>alert('Please fill out the form completely.');document.location='stu-login-signup.html';</script>");
		return;
	} else {
		if(!(student.getEmail().matches("[a-zA-Z0-9\\.]+@[a-zA-Z0-9\\-\\_\\.]+\\.[a-zA-Z0-9]{3}"))){
            out.print("<script>alert('Please create your account with correct email format');document.location='stu-login-signup.html';</script>");
            return;
    	}else if (!(student.getEmail().contains("itu.edu"))){
    		out.print("<script>alert('Please use ITU email only to create your account.');document.location='stu-login-signup.html';</script>");
            return;
    	}
		int intT = 0;
		Data data = new Data();
		intT = data.getRowCount("student WHERE email='" + student.getEmail() + "'");
		if (intT > 0) {
			out.print("<script>alert('Sorry, this email account has been taken. Please try another one.');document.location='stu-login-signup.html';</script>");
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
				out.print("<script>alert('Student account registration failed.');document.location='stu-login-signup.html';</script>");
				return;
			} else {
				out.print("<script>alert('Your student account has been created successfully!');document.location='stu-login-signup.html';</script>");
			}
		}
	}
%>
