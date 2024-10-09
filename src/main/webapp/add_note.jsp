<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<%@include file="all_js_css.jsp" %>
		<title>New Note | Note Taking</title>
	</head>
	<body>
		<div class="container">
			<%@include file="navbar.jsp" %>

			<br />
			<h1>New Note</h1>
			<br />

			<form action="SaveNoteServlet" method="POST">
				<div class="mb-3">
					<label for="title" class="form-label">Title</label>
					<input
						name="title"
						id="title"
						required
						type="text"
						class="form-control"
						placeholder="Enter your note title"
					/>
				</div>

				<div class="mb-3">
					<label for="content" class="form-label">Content</label>
					<textarea
						name="content"
						id="content"
						required
						class="form-control"
						style="height: 300px"
						placeholder="Enter your note content"
					></textarea>
				</div>

				<div class="d-flex justify-content-center">
					<button type="submit" class="btn button-orange">Add Note</button>
				</div>
			</form>
		</div>
	</body>
</html>
