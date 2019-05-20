<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <jsp:useBean id="user" class="com.marayaglobal.beans.user.Customer"></jsp:useBean> 
    <jsp:setProperty property="*" name="user"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<label>
<%
int status = CustomerDBHelper.create(user);
if(status == 0){
	out.print("Something went wrong. Try Again");
}else if(status==1){
	response.sendRedirect("account-confirmtion.jsp");
}else{
	out.print("User Already Exixts");
}



%>

</label>

</body>
</html>