package Model;

public class Maliste extends Menu{


	public Maliste() {
		super();
	}
 
	public Maliste(int booksid, String name, String images, String pDF) {
		super(booksid, name, images, pDF);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Mylist [ Booksid=" + Booksid + ", name=" + name + ", images=" + images
				+ ", PDF=" + PDF + "]";
	} 
}
