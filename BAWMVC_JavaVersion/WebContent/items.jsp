<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%
	com.RiWA.Model.product item = new com.RiWA.Model.product();
	String itemsGrid = item.getItems();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items</title>
<script type="text/javascript" src="Controllers/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="Controllers/controllerMain.js"></script>

</head>
<body>
 	<%@ page import="com.RiWA.Model.product" %>
	<%@ page import="javax.sql.*" %> 

	<form id="formItems" action="items.jsp" method="post">
		<input type="hidden" id="form_Id" name="ProductID" value="0">
		Product Name: <input type="text" id="productName" name=""> <br>
		Feedback: <input type="text" id="Feedback" name="txtItemDesc">
		<br><br>
		<input type="button" id="btnSave" name="btnSave" value="Save">
		<input type="button" id="btnRefresh" name="btnRefresh" value="Refresh">
		<input type="button" id="btnSubmit" name="btnSubmit" value="Submit">
		 <br><br>
		
		<div id="divStsMsgItem"></div>
		<div id="divProductTable"><% out.println(productGrid); %></div>
	 </form>

</body>
</html>