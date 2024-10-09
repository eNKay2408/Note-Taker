<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>

<%@ page import="live.enkay.entities.Note" %>
<%@ page import="live.enkay.helper.FactoryProvider" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<%@include file="all_js_css.jsp" %>
		<title>My Notes | Note Taking</title>
	</head>
	<body>
		<div class="container">
			<%@include file="navbar.jsp" %>

			<br />
			<h1>My Notes</h1>
      <br />

      <% 
        Session s = FactoryProvider.getFactory().openSession();
        Query q = s.createQuery("FROM Note note ORDER BY note.addedDate DESC");
        List<Note> notes = q.list();

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm");
        for (Note note : notes) {
          String formattedDate = dateFormat.format(note.getAddedDate());
      %>
      
      <div class="card text-bg-light mb-3" >
        <div class="card-header">
          <h3><%= note.getTitle() %></h3>
        </div>
        <div class="card-body">
          <p class="card-text"><%= note.getContent() %></p>
          <p><strong class="text-secondary"><%= formattedDate %></strong></p>

          <a href="edit_note.jsp?noteId=<%= note.getId() %>" class="btn button-light">Update</a>
          <a href="DeleteServlet?noteId=<%= note.getId() %>" class="btn button-orange">Delete</a>
        </div>
      </div>

      <%
        }
        s.close();
      %>
		</div>
	</body>
</html>
