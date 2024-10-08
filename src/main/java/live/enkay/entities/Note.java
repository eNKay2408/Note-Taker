package live.enkay.entities;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(length = 1500)
  private String content;

  private String title;
  private Date addedDate;

  public Note() {
  }

  public Note(String title, String content, Date addedDate) {
    this.title = title;
    this.content = content;
    this.addedDate = addedDate;
  }

  public int getId() {
    return id;
  }

  public String getTitle() {
    return title;
  }

  public String getContent() {
    return content;
  }

  public Date getAddedDate() {
    return addedDate;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public void setAddedDate(Date addedDate) {
    this.addedDate = addedDate;
  }
}
