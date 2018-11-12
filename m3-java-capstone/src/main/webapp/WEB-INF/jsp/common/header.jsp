<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<style>
		body {
			background-color: #50c327;
			font-family: didot;
		}
		table {
			width:75%;
			border: 3px solid #4b2d10;
			margin-left: auto;
			margin-right: auto;
			background-color: #fcfadb;
		}
		#siteLogo {
			max-width: auto;
			max-height: 15%;
		}
		#tdNav {
			background-color: #4b2d10;
			color: #fcfadb;
		}
	</style>
	<title>${param.pageTitle}</title>
	</head>
	<body>
	<table>
		<tr>
			<td colspan=3>	
			<c:url var="npgeekimg" value="/img/logo.png" />
			<img src="${npgeekimg}" id="siteLogo" alt="site logo"/>		
			</td>
		</tr>
		<tr>
			<td colspan=3 id="tdNav">
			<h2 style="display: inline; white-space: pre">  Home    </h2>
			<h2 style="display: inline">Survey</h2>
			</td>
		</tr>

	