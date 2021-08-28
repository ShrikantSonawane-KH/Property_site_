package property.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Renter {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	Property property;
	
	static String validRenterEmail;
	
	
	public static String getValidRenterEmail() {
		return validRenterEmail;
	}
	public static void setValidRenterEmail(String validRenterEmail) {
		Renter.validRenterEmail = validRenterEmail;
	}
	public Renter(int id, Property property) {
		super();
		this.id = id;
		this.property = property;
	}
	public Renter(Property property) {
		super();
		this.property = property;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Property getProperty() {
		return property;
	}
	public void setProperty(Property property) {
		this.property = property;
	}
	@Override
	public String toString() {
		return "Renter [id=" + id + ", property=" + property + "]";
	}
	
	
}
