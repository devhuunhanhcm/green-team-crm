<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<title>
			<dec:title />
		</title>
		<!-- App CSS -->
	    <link type="text/css" href="assets/css/app.css" rel="stylesheet" />
	    <link type="text/css" href="assets/css/app.rtl.css" rel="stylesheet" />
	
	    <!-- Material Design Icons -->
	    <link type="text/css" href="assets/css/vendor-material-icons.css" rel="stylesheet" />
	    <link type="text/css" href="assets/css/vendor-material-icons.rtl.css" rel="stylesheet" />
	
	    <!-- Font Awesome FREE Icons -->
	    <link type="text/css" href="assets/css/vendor-fontawesome-free.css" rel="stylesheet" />
	    <link type="text/css" href="assets/css/vendor-fontawesome-free.rtl.css" rel="stylesheet" />
	
	    <link type="text/css" href="assets/css/vendor-flatpickr.css" rel="stylesheet" />
	    <link type="text/css" href="assets/css/vendor-flatpickr.rtl.css" rel="stylesheet" />
	    <link type="text/css" href="assets/css/vendor-flatpickr-airbnb.css" rel="stylesheet" />
	    <link type="text/css" href="assets/css/vendor-flatpickr-airbnb.rtl.css" rel="stylesheet" />
		<dec:head/>
	</head>
	<body class="layout-fixed">
		
		<jsp:include page="layout/header.jsp"/>
		<dec:body/>
		<!-- App Settings FAB -->
    <div id="app-settings" hidden>
        <app-settings layout-active="fixed" :layout-location="{
      'default': 'index.html',
      'fixed': 'dashboard.html',
      'fluid': 'fluid-dashboard.html',
      'mini': 'mini-dashboard.html'}">
        </app-settings>
    </div>
		<!-- jQuery -->
	    <script src="assets/vendor/jquery.min.js"></script>
	
	    <!-- Bootstrap -->
	    <script src="assets/vendor/popper.min.js"></script>
	    <script src="assets/vendor/bootstrap.min.js"></script>
	
	    <!-- Perfect Scrollbar -->
	    <script src="assets/vendor/perfect-scrollbar.min.js"></script>
	
	    <!-- DOM Factory -->
	    <script src="assets/vendor/dom-factory.js"></script>
	
	    <!-- MDK -->
	    <script src="assets/vendor/material-design-kit.js"></script>
	
	    <!-- App -->
	    <script src="assets/js/toggle-check-all.js"></script>
	    <script src="assets/js/check-selected-row.js"></script>
	    <script src="assets/js/dropdown.js"></script>
	    <script src="assets/js/sidebar-mini.js"></script>
	    <script src="assets/js/app.js"></script>
	
	    <!-- App Settings (safe to remove) -->
	    <script src="assets/js/app-settings.js"></script>
	
	    <!-- Flatpickr -->
	    <script src="assets/vendor/flatpickr/flatpickr.min.js"></script>
	    <script src="assets/js/flatpickr.js"></script>
	
	    <!-- Global Settings -->
	    <script src="assets/js/settings.js"></script>
	
	    <!-- Chart.js -->
	    <script src="assets/vendor/Chart.min.js"></script>
	
	    <!-- App Charts JS -->
	    <script src="assets/js/chartjs-rounded-bar.js"></script>
	    <script src="assets/js/charts.js"></script>
	
	    <!-- Chart Samples -->
	    <script src="assets/js/page.dashboard.js"></script>
	</body>
</html>