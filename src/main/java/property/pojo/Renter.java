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
	
	
	private Property property;
	
	private  String validRenterEmail;
	
	private static String renterEmail;

	public Renter() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Renter(Property property) {
		super();
		this.property = property;
	}

	public Renter(int id, Property property, String validRenterEmail) {
		super();
		this.id = id;
		this.property = property;
		this.validRenterEmail = validRenterEmail;
	}

	public Renter(Property property, String validRenterEmail) {
		super();
		this.property = property;
		this.validRenterEmail = validRenterEmail;
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

	public String getValidRenterEmail() {
		return validRenterEmail;
	}

	public void setValidRenterEmail(String validRenterEmail) {
		this.validRenterEmail = validRenterEmail;
	}

	public static String getRenterEmail() {
		return renterEmail;
	}

	public static void setRenterEmail(String renterEmail) {
		Renter.renterEmail = renterEmail;
	}

	@Override
	public String toString() {
		return "Renter [id=" + id + ", property=" + property + ", validRenterEmail=" + validRenterEmail + "]";
	}

	
	
	

	
}
