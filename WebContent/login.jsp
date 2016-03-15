<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="data" class="com.bwm.db.Data" scope="page"/>
<jsp:useBean id="show" class="com.bwm.page.Show" scope="page"/>
<html>
<head>
<title>
login
</title>
</head>
<body>
<%
String strUserName=(String)request.getParameter("user-email");
String strPassword=(String)request.getParameter("user-pw");
int intT=0;
intT=data.getRowCount("tb_student WHERE sname='"+strUserName+"' AND password='"+strPassword+"'");
if(intT>0){
    session.setAttribute("name",strUserName);
       session.setAttribute("use","student");
    response.sendRedirect("student/login.jsp");
}else{
        out.print(show.errorBox("Incorrect User Name or Password.Please try again.",""));
        return;
}
%>
</body>
</html>
