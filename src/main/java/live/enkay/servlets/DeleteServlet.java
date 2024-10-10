package live.enkay.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import live.enkay.entities.Note;
import live.enkay.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
      int noteId = Integer.parseInt(request.getParameter("noteId").trim());

      Session s = FactoryProvider.getFactory().openSession();
      Transaction tx = s.beginTransaction();

      Note note = s.get(Note.class, noteId);
      s.delete(note);

      tx.commit();
      s.close();

      response.sendRedirect("all_notes.jsp");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
