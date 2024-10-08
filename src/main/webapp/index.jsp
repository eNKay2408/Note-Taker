<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<%@include file="all_js_css.jsp" %>
		<title>Home | Note Taking</title>
	</head>
	<body>
		<div class="container"><%@include file="navbar.jsp" %></div>

		<div class="container py-5 my-5">
			<div class="row justify-content-center">
				<div class="col-md-8 text-center">
					<h1 class="display-4">Note Taking App</h1>
					<br/>
					<p class="lead">This is a simple note taking app where you can add, edit and delete your notes.</p>
					
					<hr class="my-4">

					<p>Click the button below to add your note.</p>
					<a class="btn button-orange btn-lg" href="add_note.jsp">Start Here</a>
				</div>
			</div>
		</div>

	</body>
</html>
