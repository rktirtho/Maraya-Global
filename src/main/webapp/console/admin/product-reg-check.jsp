<%@page import="com.marayaglobal.dao.AdminProductDBHelper"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="product" class="com.marayaglobal.product.AdminProduct"></jsp:useBean>
<jsp:setProperty property="*" name="product" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <%= product.getTitle() %>
</body>
</html>