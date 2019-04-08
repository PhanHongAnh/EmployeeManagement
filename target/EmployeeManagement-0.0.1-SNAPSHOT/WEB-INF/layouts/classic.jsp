<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
	<title><tiles:getAsString name="title" /></title>
	
	<style>
	.footer {
	   position: fixed;
	   left: 0;
	   bottom: 0;
	   width: 100%;
	   text-align: center;
	}
	</style>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<br/>
	<div style="display:inline">
		<tiles:insertAttribute name="body" />
	</div>
	<br/><br/>
	<tiles:insertAttribute name="footer" />
</body>
</html>