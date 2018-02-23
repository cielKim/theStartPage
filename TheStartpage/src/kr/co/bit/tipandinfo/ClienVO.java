package kr.co.bit.tipandinfo;

public class ClienVO {
	private String title;
	private String link;
	private String date;
	private int hits;
	
	public ClienVO(String title, String link, String date, int hits) {
		super();
		this.title = title;
		this.link = link;
		this.date = date;
		this.hits = hits;
	}
	public ClienVO(String title, String link) {
		super();
		this.title = title;
		this.link = link;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	@Override
	public String toString() {
		return "ClienVO [title=" + title + ", link=" + link + ", date=" + date + ", hits=" + hits + "]";
	}
	
	

}
