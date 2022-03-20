<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html dir="ltr">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<title>
			CRM - <dec:title />
		</title>
		<dec:head/>
		<!-- App CSS -->
	    <link type="text/css" href="<c:url value="/assets/css/app.css"/>" rel="stylesheet" />
	    <link type="text/css" href="<c:url value="/assets/css/app.rtl.css"/>" rel="stylesheet" />
	
	    <!-- Material Design Icons -->
	    <link type="text/css" href="<c:url value="/assets/css/vendor-material-icons.css"/>" rel="stylesheet" />
	    <link type="text/css" href="<c:url value="/assets/css/vendor-material-icons.rtl.css"/>" rel="stylesheet" />
	
	    <!-- Font Awesome FREE Icons -->
	    <link type="text/css" href="<c:url value="/assets/css/vendor-fontawesome-free.css"/>" rel="stylesheet" />
	    <link type="text/css" href="<c:url value="/assets/css/vendor-fontawesome-free.rtl.css"/>" rel="stylesheet" />
	
	    <link type="text/css" href="<c:url value="/assets/css/vendor-flatpickr.css"/>" rel="stylesheet" />
	    <link type="text/css" href="<c:url value="/assets/css/vendor-flatpickr.rtl.css"/>" rel="stylesheet" />
	    <link type="text/css" href="<c:url value="/assets/css/vendor-flatpickr-airbnb.css"/>" rel="stylesheet" />
	    <link type="text/css" href="<c:url value="/assets/css/vendor-flatpickr-airbnb.rtl.css"/>" rel="stylesheet" />
	    <!-- DateRangePicker -->
    	<link type="text/css" href="<c:url value="/assets/vendor/daterangepicker.css"/>" rel="stylesheet">	

	</head>
	<body class="layout-fixed">
		
		<div class="preloader"></div>
		<jsp:include page="/layout/header.jsp"/>
		<dec:body/>
		<div id="app-settings" hidden>
        <app-settings layout-active="fixed" :layout-location="{
	      'default': 'index.html',
	      'fixed': 'dashboard.html',
	      'fluid': 'fluid-dashboard.html',
	      'mini': 'mini-dashboard.html'}">
        </app-settings>
	    </div>
	    <!-- jQuery -->
	    <script src="<c:url value="/assets/vendor/jquery.min.js"/>"></script>
	
	    <!-- Bootstrap -->
	    <script src="<c:url value="/assets/vendor/popper.min.js"/>"></script>
	    <script src="<c:url value="/assets/vendor/bootstrap.min.js"/>"></script>
	
	    <!-- Perfect Scrollbar -->
	    <script src="<c:url value="/assets/vendor/perfect-scrollbar.min.js"/>"></script>
	
	    <!-- DOM Factory -->
	    <script src="<c:url value="/assets/vendor/dom-factory.js"/>"></script>
	
	    <!-- MDK -->
	    <script src="<c:url value="/assets/vendor/material-design-kit.js"/>"></script>
	
	    <!-- App -->
	    <script src="<c:url value="/assets/js/toggle-check-all.js"/>"></script>
	    <script src="<c:url value="/assets/js/check-selected-row.js"/>"></script>
	    <script src="<c:url value="/assets/js/dropdown.js"/>"></script>
	    <script src="<c:url value="/assets/js/sidebar-mini.js"/>"></script>
	    <script src="<c:url value="/assets/js/app.js"/>"></script>
	
	    <!-- App Settings (safe to remove) -->
	    <script src="<c:url value="/assets/js/app-settings.js"/>"></script>
	
	    <!-- Flatpickr -->
	    <script src="<c:url value="/assets/vendor/flatpickr/flatpickr.min.js"/>"></script>
	    <script src="<c:url value="/assets/js/flatpickr.js"/>"></script>
	
	    <!-- Global Settings -->
	    <script src="<c:url value="/assets/js/settings.js"/>"></script>
	    
	    <!-- DateRangePicker -->
	    <script src="<c:url value="/assets/vendor/moment.min.js"/>"></script>
	    <script src="<c:url value="/assets/vendor/daterangepicker.js"/>"></script>
	    <script src="<c:url value="/assets/js/daterangepicker.js"/>"></script>
	    
	    <!-- List.js -->
	    <script src="<c:url value="/assets/vendor/list.min.js"/>"></script>
	    <script src="<c:url value="/assets/js/list.js"/>"></script>
	</body>
</html>