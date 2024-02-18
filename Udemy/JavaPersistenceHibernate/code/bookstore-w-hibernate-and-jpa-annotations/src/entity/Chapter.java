package entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

@Entity
public class Chapter{
	/*
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "isbn", column = @Column(name = "BOOK_ISBN", nullable = false, length = 50)),
			@AttributeOverride(name = "chapterNum", column = @Column(name = "CHAPTER_NUM", nullable = false)) }
	)
	private ChapterId chapterId;
	*/
	
	@EmbeddedId
	private ChapterId chapterId;
	
	/*
	@ManyToOne
	@JoinColumn(name = "BOOK_ISBN", nullable = false, insertable = false, updatable = false)
	private Book book;
	*/
	
	@ManyToOne
    @JoinColumn(name = "BOOK_ISBN")
    @MapsId("isbn")
	private Book book;
	
	@Column(name = "TITLE", nullable = false, length = 100)
	private String title;

	public Chapter() {	}
	public Chapter(ChapterId chapterId, String title) {
		this.chapterId = chapterId;
		this.title = title;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	@Override
	public String toString() {
		return "Chapter [chapterId=" + chapterId + ", title=" + title + "]";
	}
}
