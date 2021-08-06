<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${task.name}</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body class="my-login-page my-2">	
	<div class="container">
	
		<div class="flex1">
	    	<div class="col-lg-10 mx-auto my-0">
	      		<div class="card rounded shadow border-0">
	        		<div class="card-body p-5 bg-white rounded">
						<div class="left">
							<div class="info">
								<h1>Task: ${task.name}</h1>
								<p class="mt-5">Creator: ${task.creator.name}</p>
								<p>Assignee: ${task.assignee.name}</p>
								<p>Priority: ${task.priority}</p>
							</div>
							
							<c:if test="${task.creator.id.equals(user.id)}">
							<div class="d-flex">
								<div>
									<a href="/tasks/edit/${task.id}" class="btn btn-primary">Edit</a>
								</div>
								
								<form action="/tasks/delete/${task.id}" method="post" class="ml-3">
				    				<input type="hidden" name="_method" value="delete">
				    				<input type="submit" value="Delete" class="btn btn-primary">
								</form>
							</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
</body>
</html>