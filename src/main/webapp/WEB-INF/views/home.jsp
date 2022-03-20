<%@page import="cybersoft.javabackend.crm.util.UrlConst"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.time.Duration" %>
<%@ page import = "java.time.LocalDateTime" %>
<%@ page import = "java.lang.Math" %>
<head>
	<meta charset="UTF-8">
	<title>Homepage</title>
	<style>
		div.card:hover {
			transform: translate(-20px, -20px);
    		transition: 0.5s;
    		background: #effeff;
    		
		}
	</style>
</head>

<body>
	<div class="container page__heading-container">
	    <div class="page__heading">
	        <div class="d-flex align-items-center">
	            <div>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb mb-0">
	                        <li class="breadcrumb-item"><a href="#">Home</a></li>
	                        <li class="breadcrumb-item active" aria-current="page">
	                            Dashboard
	                        </li>
	                    </ol>
	                </nav>
	                <h1 class="m-0">Dashboard</h1>
	            </div>
	            <div class="ml-auto">
	                <a href="<%=request.getContextPath() + UrlConst.JOB_CREATE%>" class="btn btn-light">
	                	<i class="material-icons icon-16pt text-muted mr-1">settings</i>
	    				Create a new Project
	    			</a>
	            </div>
	        </div>
	    </div>
	</div>
	
	<div class="container page__container">
	   <c:forEach var="lstJob" items="${lstJob}">
	   		<a style="cursor: pointer">
	   			<div>
	   				<div class="card" style="padding:20px; border-radius: 25px">
				    	<h1 style="border-style: groove; width: fit-content; padding: 6px;">
							${lstJob.getName()}  					
						</h1>
				    	<c:choose>
				    		<c:when test="${LocalDateTime.now().isAfter(lstJob.getEnd_date())}">
			    				<h4 class="card-header__title flex mb-0" style="margin-top:10px">
			    					<span>Manager: ${lstJob.getManager().getName() }</span>
			    					<span style="margin-left: 10%">Number of Participant: ${Duration.between(lstJob.getStart_date(), lstJob.getEnd_date()).toDays() }</span>
			    					<span style="float:right;">Finished!</span>
			    				</h4>     			
				    			<div class="progress" style="margin-top:20px; height:30px">
				  					<div class="progress-bar bg-danger" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
								</div>
				    		</c:when>
				    		<c:otherwise>    				
			    				<h4 class="card-header__title flex mb-0" style="margin-top:10px;">
			    					<span>Manager: ${lstJob.getManager().getName() }</span>
			    					<span style="margin-left: 10%">Number of Participant: ${Duration.between(lstJob.getStart_date(), lstJob.getEnd_date()).toDays() }</span>
			    					<span style="float:right;">${Duration.between(lstJob.getStart_date(), lstJob.getEnd_date()).toDays() } days left</span>
			    				</h4>    			
				    			<div class="progress" style="margin-top:20px; height:30px">
				  					<div class="progress-bar bg-info" role="progressbar" style="width: ${Math.round((Duration.between(LocalDateTime.now(), lstJob.getEnd_date()).toDays()*100/Duration.between(lstJob.getStart_date(), lstJob.getEnd_date()).toDays())*100)/100 }%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">${Math.round((Duration.between(LocalDateTime.now(), lstJob.getEnd_date()).toDays()*100/Duration.between(lstJob.getStart_date(), lstJob.getEnd_date()).toDays())*100)/100 }%</div>
								</div>
				    		</c:otherwise>
				    	</c:choose>	        
		    		</div>
	   			</div>
	   		</a>
	    		    
	    </c:forEach> 
	</div>
	
	<content tag="scripts">
		<!-- Chart.js -->
		<script src='<c:url value="assets/vendor/Chart.min.js" />'></script>
		
		<!-- App Charts JS -->
		<script src='<c:url value="assets/js/chartjs-rounded-bar.js" />'></script>
		<script src='<c:url value="assets/js/charts.js" />'></script>
		
		<!-- Chart Samples -->
		<script src='<c:url value="assets/js/page.dashboard.js" />'></script>
	</content>
</body>