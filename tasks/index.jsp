<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Manager</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body class="my-login-page my-2">
	<div class="row big">
		<div class="col-xl-10 mx-auto bigg">
			<div class="head">
				<h1>Welcome, <c:out value="${user.name}"></c:out></h1>
				<small><a href="/logout">Logout</a></small>
			</div>
		</div>
	</div>
	
	<div class="row mt-5">
	    <div class="col-lg-10 mx-auto my-0">
	      <div class="card rounded shadow border-0">
	        <div class="card-body p-5 bg-white rounded">
	          <div class="table-responsive">
	            <table style="width:100%" class="table table-striped table-bordered">
	              <thead>
	                <tr>
	                  <th>Task</th>
	                  <th>Creator</th>
	                  <th>Assignee</th>
	                  <th>Priority</th>
	                </tr>
	              </thead>
	              <tbody>
	              <c:forEach items="${tasks}" var="task">
	                <tr>
	                  <td><a href="/tasks/${task.id}">${task.name}</a></td>
	                  <td>${task.creator.name}</td>
	                  <td>${task.assignee.name}</td>
	                  <td>${task.priority}</td>
	                </tr>
	              </c:forEach>
	              </tbody>
	            </table>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  
	  <div class="row big mt-5">
		<div class="col-xl-10 mx-auto bigg">
			<a href="/tasks/new" class="btn btn-primary">Create Task</a>
		</div>
	</div>
	  
</body>
</html>