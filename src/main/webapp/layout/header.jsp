<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="cybersoft.javabackend.crm.util.UrlConst"%>

<div class="page__header mb-0">
    <div class="container page__container">
        <div class="navbar navbar-secondary navbar-light navbar-expand-sm p-0">
            <button class="navbar-toggler navbar-toggler-right" data-toggle="collapse" data-target="#navbarsExample03" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse" id="navbarsExample03">
                <ul class="nav navbar-nav flex">
                    <li class="nav-item">
                        <a class="nav-link active" href="<%=request.getContextPath() + UrlConst.HOME%>">
                            Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                            User
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">
                                User List
                            </a>
                            <a class="dropdown-item" href="#">
                                Create User
                            </a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Manage Role</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Projects</a>
                    </li>             
                </ul>
                <ul class="nav navbar-nav d-none d-sm-flex border-left navbar-border navbar-height align-items-center">
		            <li class="nav-item dropdown">
		            	<a href="#account_menu" class="nav-link dropdown-toggle" data-toggle="dropdown" data-caret="false"> 
			                <span class="avatar avatar-sm"> 
			                    <span class="avatar-title rounded-circle bg-warning pr" style="font-size: 0.8vw;">
			                    	${user.getName().substring(test.lastIndexOf(" "))}
			                    </span>
			                </span>
		                </a>
		                <div id="account_menu" class="dropdown-menu dropdown-menu-right">
		                    <div class="dropdown-item-text dropdown-item-text--lh">
		                        <div>
		                            <strong>${user.getName()}</strong>
		                        </div>
		                        <div>${user.getEmail()}</div>
		                    </div>
		                    <div class="dropdown-divider"></div>
		                    <a class="dropdown-item" href="profile.html"> My profile </a>
		                    <a class="dropdown-item" href="account-edit.html">Edit account </a>
		                    <div class="dropdown-divider"></div>
		                    <a class="dropdown-item" href="<%=request.getContextPath() + UrlConst.AUTH_OUT%>">Logout</a>
		                </div>
		            </li>
		        </ul>
            </div>
        </div>
    </div>
</div>