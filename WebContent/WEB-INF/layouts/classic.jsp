<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
	<title><tiles:getAsString name="title" /></title>
	
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	
	<style>
	.header-avatar{
		width: 42px;
		height: 42px;
	}
	nav {
		width: 100%;
		background: #E0E0E0;
		font-family: 'Avenir', sans-serif;
	}
	.logo{  
		font-family: 'Hind', sans-serif;
		font-size: 30px;
		text-shadow: 1px 1px 2px #c4c4c4;
		padding-left: 20px;
		padding-right: 40px;
	}
	.navicon{
		border: none;
		background-color: #E0E0E0;
		display: inline-block;
		font-size: 30px;
		margin: 10px 25px ;
		float: right;
		color: white;
	 }
	.mainNavDropDown{
		float: right;
		padding-left: 0;
		margin: 0;
		list-style: none;
		text-align: center;
		display: none;
	 }
	.mainNavDropDown li{
		font-size: 20px;
		padding: 20px;
		background: #E0E0E0;
		border-bottom: 1px solid black;
	 }
	.mainNavDropDown li:last-child{
		border-bottom: none;
	 }
	.mainNavDropDown li:hover{
		background: black;
		color: #E0E0E0;
	 }
	.footer {
	   position: fixed;
	   left: 0;
	   bottom: 0;
	   width: 100%;
	   text-align: center;
	}
	.fa-1x {
	font-size: 1.5rem;
	}
	.navbar-toggler.toggler-example {
	cursor: pointer;
	}
	.container{
		margin-top:50px;
	}
	.panel-login {
		margin-top: 50px;
		border-color: #ccc;
		-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
		-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
		box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	}
	.panel-login>.panel-heading {
		color: #00415d;
		background-color: #fff;
		border-color: #fff;
		text-align:center;
	}
	.panel-login>.panel-heading a{
		text-decoration: none;
		color: #666;
		font-weight: bold;
		font-size: 15px;
		-webkit-transition: all 0.1s linear;
		-moz-transition: all 0.1s linear;
		transition: all 0.1s linear;
	}
	.panel-login>.panel-heading a.active{
		color: #029f5b;
		font-size: 18px;
	}
	.panel-login>.panel-heading hr{
		margin-top: 10px;
		margin-bottom: 0px;
		clear: both;
		border: 0;
		height: 1px;
		background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
		background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
		background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
		background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	}
	.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
		height: 45px;
		border: 1px solid #ddd;
		font-size: 16px;
		-webkit-transition: all 0.1s linear;
		-moz-transition: all 0.1s linear;
		transition: all 0.1s linear;
	}
	.panel-login input:hover,
	.panel-login input:focus {
		outline:none;
		-webkit-box-shadow: none;
		-moz-box-shadow: none;
		box-shadow: none;
		border-color: #ccc;
	}
	.btn-login {
		background-color: #59B2E0;
		outline: none;
		color: #fff;
		font-size: 14px;
		height: auto;
		font-weight: normal;
		padding: 14px 0;
		text-transform: uppercase;
		border-color: #59B2E6;
	}
	.btn-login:hover,
	.btn-login:focus {
		color: #fff;
		background-color: #53A3CD;
		border-color: #53A3CD;
	}
	.forgot-password {
		text-decoration: underline;
		color: #888;
	}
	.forgot-password:hover,
	.forgot-password:focus {
		text-decoration: underline;
		color: #666;
	}
	.form-margin {
		margin-top:30px;
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
	
	<script>
		$('.navicon').on('click', function(){
		  $('.mainNavDropDown').slideToggle(500);
		});
	</script>
</body>
</html>