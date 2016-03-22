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
String strEmail=(String)request.getParameter("user-email");
String strPassword=(String)request.getParameter("user-pw");
int intT=0;
intT=data.getRowCount("student WHERE email='"+strEmail+"' AND password='"+strPassword+"'");
if(intT>0){
    session.setAttribute("email",strEmail);
    response.sendRedirect("profile-view.html");
}else{
        out.print(show.errorBox("Incorrect User Name or Password.Please try again.",""));
        return;
}
%>
</body>
</html>
