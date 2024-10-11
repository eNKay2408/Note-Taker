<%@ page import="org.hibernate.Session" %>

<%@ page import="live.enkay.entities.Note" %>
<%@ page import="live.enkay.helper.FactoryProvider" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<%@include file="all_js_css.jsp" %>
		<title>Edit Note | Note Taking</title>
	</head>
	<body>
		<div class="container">
			<%@include file="navbar.jsp" %>

			<br />
			<h1>Edit Note</h1>
      <br />

			<%
				int noteId = Integer.parseInt(request.getParameter("noteId").trim());
				Session s = FactoryProvider.getFactory().openSession();
				Note note = s.get(Note.class, noteId);
			%>

			<form action="UpdateServlet" method="POST">
				<input value="<%= note.getId() %>" name="noteId" type="hidden" />

				<div class="mb-3">
					<label for="title" class="form-label">Title</label>
					<input
						name="title"
						id="title"
						required
						type="text"	
						class="form-control"
						value="<%= note.getTitle() %>"
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
					><%= note.getContent() %>
					</textarea>
				</div>

				<div class="d-flex justify-content-center">
					<button type="submit" class="btn button-orange">Save Note</button>
				</div>
			</form>

			<%
				s.close();
			%>

    </div>
  </body>
</html>