<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="" />
</c:import>

<tr>
<td colspan="2" style="padding: 25px 25px 20px 25px">
<figure style="width:auto; height: 475px; overflow:hidden; margin:0">
<img style="width: 100%" src="img/parks/${fn:toLowerCase(park.code)}.jpg">
</figure>
</td>
</tr>


<tr>
<td colspan="2" style="font-size: 18px; padding: 5px 25px 20px 25px">"${park.inspirationalQuote}"</td>
</tr> 

<tr>
<td colspan="2" style="padding: 5px 25px 20px 25px"> - ${park.inspirationalQuoteSource}</td>
</tr>
 
<tr>
<td colspan="2" style="padding: 5px 25px 20px 25px"><h2>${park.name}</h2></td>
</tr>

<tr>
<td colspan="2" style="padding: 5px 25px 20px 25px">${park.description}</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>State:</b> ${park.state}
</td>
<td style="padding: 0px 500px 0px 0px">
<b>Acreage:</b> ${park.acreage}    
</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Entry Fee:</b> $${park.entryFee} 
</td>
<td style="padding: 0px 100px 0px 0px">
<b>Miles of Trail:</b> ${park.milesOfTrail}
</td>
</tr> 

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Year Founded: </b> ${park.yearFounded}
</td>
<td style="padding: 0px 100px 0px 0px">
<b>Number of Campsites:</b> ${park.numberOfCampsites}
</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Elevation in Feet:</b> ${park.elevationInFeet}
</td>
<td style="padding: 0px 100px 0px 0px">
<b>Climate:</b> ${park.climate}
</td>
</tr>

<tr>
<td style="padding: 0px 25px 0px 25px">
<b>Annual Visitor Count:</b> ${park.annualVisitorCount}
</td>
<td style="padding: 0px 100px 0px 0px">
<b>Number Of Animal Species:</b> ${park.numberOfAnimalSpecies}
</td>
</tr>


<c:forEach var="day" items="${forecast}">
<tr>
<td>${day.low} ${day.high}</td>
</tr>
</c:forEach>


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