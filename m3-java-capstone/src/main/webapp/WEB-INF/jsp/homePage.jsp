<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<title>${param.pageTitle}</title>
	</head>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="" />
</c:import>



<c:import url="/WEB-INF/jsp/common/footer.jsp" />