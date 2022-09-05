<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/customer-index.css"%>
</style>
</head>
<body>
	
	<h2>Welcome To Customer Index</h2>

	<div class="navbar">
	<button onclick="document.location='/index/home'" style="float:right;width: 81px;height: 44px;font-size: 15px;font-weight: 300;margin-top: 40x;">Logout</button>
		<div class="dropdown">
			<button class="dropbtn">
				Customer Details <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				 <br>
				  <a href="/customer/list">View Customer List</a> <br> 
				  <br>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Bill Payment <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">

	<br>
	<a href="/billpayment/addform">Add Bill Payment</a>
	<a href="/billpayment/list">View Bill Payment Details List</a>
	<br>
			</div>
		</div>
			</div>
			
			<div id="table root">
		<table class="table" style="
    margin-top: 46px;
    width: 1366px;
    height: 99px;
    background-color: bisque;
">
		<caption></caption>
			<thead>
				<tr>
					<th>Bill Id</th>
					<th>Bill Date</th>
					<th>Unit Consumed</th>
					<th>Bill Amount</th>
					<th>Meter Id</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetails" items="${allbilldetails}">
					<tr>
						<td>${billdetails.billId}</td>
						<td>${billdetails.billDate}</td>
						<td>${billdetails.unitConsumed}</td>
						<td>${billdetails.billAmount}</td>
						<td>${billdetails.meterId}</td>
					 <%-- <td><a href="/billpayment/addpaymentform?id=${billdetails.billId}&mid=${billdetails.meterId}">Pay now</a></td> --%> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>	
	
	<button type="button" class="collapsible" style="
    margin-left: 557px;
    margin-top: 18px;
    text-align: center;
">Pay now</button>
<div class="content">
 <iframe src="/billpayment/addform" title="Frame"> </iframe>
</div>
<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>	

</body>
</html>


