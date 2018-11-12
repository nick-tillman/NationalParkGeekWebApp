<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<title>${param.pageTitle}</title>
	</head>
	<body>
	<table style="width:75%; border: 3px solid black; margin-left: auto; margin-right: auto">
		<tr>
			<td>	
			<c:url var="npgeekimg" value="/img/logo.png" />
			<img src="${npgeekimg}" style="max-width: 100%; max-height: auto;" />		
			</td>
		</tr>
		<tr>
			<td style="background-color: grey">
			<h2 style="display: inline">Home</h2>
			<h2 style="display: inline">Survey</h2>
			</td>
		</tr>

	