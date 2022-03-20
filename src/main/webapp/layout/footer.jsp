<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- App Settings FAB -->
<div id="app-settings">
    <app-settings layout-active="fixed" :layout-location="{
	  'default': 'index.html',
	  'fixed': 'dashboard.html',
	  'fluid': 'fluid-dashboard.html',
	  'mini': 'mini-dashboard.html'}">
    </app-settings>
</div>
<!-- jQuery -->
<script src='<c:url value="assets/vendor/jquery.min.js" />'></script>

<!-- Bootstrap -->
<script src='<c:url value="assets/vendor/popper.min.js" />'></script>
<script src='<c:url value="assets/vendor/bootstrap.min.js" />'></script>

<!-- Perfect Scrollbar -->
<script src='<c:url value="assets/vendor/perfect-scrollbar.min.js" />'></script>

<!-- DOM Factory -->
<script src='<c:url value="assets/vendor/dom-factory.js" />'></script>

<!-- MDK -->
<script src='<c:url value="assets/vendor/material-design-kit.js" />'></script>

<!-- App -->
<script src='<c:url value="assets/js/toggle-check-all.js" />'></script>
<script src='<c:url value="assets/js/check-selected-row.js" />'></script>
<script src='<c:url value="assets/js/dropdown.js" />'></script>
<script src='<c:url value="assets/js/sidebar-mini.js" />'></script>
<script src='<c:url value="assets/js/app.js" />'></script>

<!-- App Settings (safe to remove) -->
<script src='<c:url value="assets/js/app-settings.js" />'></script>

<!-- Flatpickr -->
<script src='<c:url value="assets/vendor/flatpickr/flatpickr.min.js" />'></script>
<script src='<c:url value="assets/js/flatpickr.js" />'></script>

<!-- Global Settings -->
<script src='<c:url value="assets/js/settings.js" />'></script>
