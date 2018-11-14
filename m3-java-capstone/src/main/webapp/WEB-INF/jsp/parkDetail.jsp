<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="" />
</c:import>

<tr>
<td colspan="5" style="padding: 25px 25px 20px 25px">
<figure style="width:auto; height: 475px; overflow:hidden; margin:0">
<img style="width: 100%" src="img/parks/${fn:toLowerCase(park.code)}.jpg">
</figure>
</td>
</tr>


<tr>
<td colspan="5" style="font-size: 18px; padding: 5px 25px 20px 25px">"${park.inspirationalQuote}"</td>
</tr> 

<tr>
<td colspan="5" style="padding: 5px 25px 20px 25px"> - ${park.inspirationalQuoteSource}</td>
</tr>
 
<tr>
<td colspan="5" style="padding: 5px 25px 20px 25px"><h2>${park.name}</h2></td>
</tr>

<tr>
<td colspan="5" style="padding: 5px 25px 20px 25px">${park.description}</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>State:</b> ${park.state}
</td>

<td colspan="4" style="padding: 0px 500px 0px 0px">
<b>Acreage:</b> ${park.acreage}    
</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Entry Fee:</b> $${park.entryFee} 
</td>
<td colspan="4" style="padding: 0px 100px 0px 0px">
<b>Miles of Trail:</b> ${park.milesOfTrail}
</td>
</tr> 

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Year Founded: </b> ${park.yearFounded}
</td>
<td colspan="4" style="padding: 0px 100px 0px 0px">
<b>Number of Campsites:</b> ${park.numberOfCampsites}
</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Elevation in Feet:</b> ${park.elevationInFeet}
</td>
<td colspan="4" style="padding: 0px 100px 0px 0px">
<b>Climate:</b> ${park.climate}
</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Annual Visitor Count:</b> ${park.annualVisitorCount}
</td>
<td colspan="4" style="padding: 0px 100px 0px 0px">
<b>Number Of Animal Species:</b> ${park.numberOfAnimalSpecies}
</td>
</tr>
<tr>
<c:forEach var="day" items="${forecast}">
<c:choose>
<c:when test="${day.forecast == 'partly cloudy'}">
<c:set var="imageName" value="partlyCloudy.png"/>
</c:when>
<c:otherwise>
<c:set var="imageName" value="${day.forecast}.png" />
</c:otherwise>
</c:choose>


<c:choose>
<c:when test="${day.fiveDayForecastValue == 1}">
<c:set var="imageOne" value="<img src='img/weather/${imageName}' >" />
<td style="padding: 25px 0px 0px 25px">
<h3 style="color:#50c327">     5-DAY FORECAST</h3>
<b>TODAY</b><br>
${imageOne}<br>
<b style="color:#50c327">High:</b> ${day.high}<br>
<b style="color:#4da6ff">Low:</b> ${day.low}<br>
<b>Forecast:</b> ${day.forecast}
</td>
</c:when>
<c:otherwise>
<c:set var="imageOne" value="<img src='img/weather/${imageName}' style='width: 100px; padding:10px 20px 0px 0px'>" />
<td style="padding: 0px 0px 0px 15px">
${imageOne}<br>
<b style="color:#50c327">High:</b> ${day.high}<br>
<b style="color:#4da6ff">Low:</b> ${day.low} 
</td>
</c:otherwise>
</c:choose>
</c:forEach>
</tr>




<c:import url="/WEB-INF/jsp/common/footer.jsp" />


<!-- &&&&&&&&&&&&&&&&&&&&&&&&&& -->

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<c:import url="/WEB-INF/jsp/common/header.jsp">

	<c:param name="pageTitle" value="" />

</c:import>



<tr>



<td>

<figure style="width:auto; height: 475px; overflow:hidden; margin:0">

<img style="width: 100%" src="img/parks/${fn:toLowerCase(park.code)}.jpg">

</figure>

</td>

</tr>

<tr>

<td>${park.name}</td>

</tr>

<c:forEach var="day" items="${forecast}">

<tr>

<td>${day.low}</td>

</tr>

</c:forEach>





<c:import url="/WEB-INF/jsp/common/footer.jsp" /> --%>