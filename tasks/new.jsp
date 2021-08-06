<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Create Task</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body class="my-login-page my-2">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">					
					
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Create a new task</h4>
							<c:out value="${error}" />
							<form:form method="POST" class="my-login-validation" modelAttribute="task" action="/tasks/new">
								<div class="form-group">
									<form:label path="name">Task</form:label>
									<form:input type="text" class="form-control" path="name" />
									<form:errors path="name"/>
								</div>
								
								<div class="form-group">			
									<form:label path="assignee">Assignee</form:label>
									<form:errors path="assignee"/>
									<form:select class="form-control form-inline" path="assignee">
										<c:forEach items="${assignees}" var="user">
											<form:option value = "${user.id}" label = "${user.name}" />
										</c:forEach>
									</form:select>									
								</div>
								
								<div class="form-group">								
									<form:label path="priority">Priority</form:label>
									<form:errors path="priority"/>
									<form:select class="form-control form-inline" path="priority">
										<form:option value = "High" label = "High" />
										<form:option value = "Medium" label = "Medium" />
										<form:option value = "Low" label = "Low" />
									</form:select>									
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Create
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>