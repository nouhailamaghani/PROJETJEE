package Model;

public class Contact {
 String name;
 String email;
 String message;
 
/**
 * @param name
 * @param email
 * @param message
 */
public Contact(String name, String email, String message) {
	super();
	this.name = name;
	this.email = email;
	this.message = message;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
@Override
public String toString() {
	return "Contact [name=" + name + ", email=" + email + ", message=" + message + "]";
}

}
