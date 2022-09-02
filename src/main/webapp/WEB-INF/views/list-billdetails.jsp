<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Bill Details List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
<%@include file="/WEB-INF/css/list-billdetails.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/meterboxindex/'" style="float:left">Back</button>
    </p>
	<div id="table root">
		<table class="table-size">
        <caption></caption>
            <colgroup>
                <col span="10" style="background-color:plum">
                <col span="4" style="background-color: crimson">
            </colgroup>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>