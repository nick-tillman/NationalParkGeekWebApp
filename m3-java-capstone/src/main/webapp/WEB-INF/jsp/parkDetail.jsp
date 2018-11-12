<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="" />
</c:import>

<tr>
<td>${park.name}</td>
</tr>
<c:forEach var="day" items="${forecast}">
<tr>
<td>${day.low}</td>
</tr>
</c:forEach>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />