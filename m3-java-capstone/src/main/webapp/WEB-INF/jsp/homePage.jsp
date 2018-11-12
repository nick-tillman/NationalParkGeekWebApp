<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="" />
</c:import>
<c:forEach var="park" items="${allParks}">
	<tr>
		<td>
		<c:url var="parkDetail" value="/parkDetail?code=${park.code}" />
		<a href="${parkDetail}"><img src="img/parks/${fn:toLowerCase(park.code)}.jpg"></a>
		</td>
		<td>
		${park.name} <br>
		${park.description}
		</td>
	</tr>
</c:forEach>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />