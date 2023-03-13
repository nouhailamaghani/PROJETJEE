package Model;

public class Menu {
 int Booksid;
 String name;
 String images;
 String PDF;
 

/**
 * 
 */
public Menu() {

}
/**
 * @param booksid
 * @param name
 * @param images
 * @param pDF
 */
public Menu(int booksid, String name, String images, String pDF) {
	super();
	Booksid = booksid;
	this.name = name;
	this.images = images;
	PDF = pDF;
}
public int getBooksid() {
	return Booksid;
}
public void setBooksid(int booksid) {
	Booksid = booksid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getImages() {
	return images;
}
public void setImages(String images) {
	this.images = images;
}

public String getPDF() {
	return PDF;
}
public void setPDF(String pDF) {
	PDF = pDF;
}	

}
