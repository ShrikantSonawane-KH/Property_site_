package property.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Pro_address {

	@Id
	@GeneratedValue
	private int id;
	private String area;
	private String lane;
	private String landmark;
	private String city;
	private String state;
	private String country;
	private String pincode;
	public Pro_address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pro_address(int id, String area, String lane, String landmark, String city, String state, String country,
			String pincode) {
		super();
		this.id = id;
		this.area = area;
		this.lane = lane;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
	}
	public Pro_address(String area, String lane, String landmark, String city, String state, String country,
			String pincode) {
		super();
		this.area = area;
		this.lane = lane;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getLane() {
		return lane;
	}
	public void setLane(String lane) {
		this.lane = lane;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	@Override
	public String toString() {
		return "Pro_address [id=" + id + ", area=" + area + ", lane=" + lane + ", landmark=" + landmark + ", city="
				+ city + ", state=" + state + ", country=" + country + ", pincode=" + pincode + "]";
	}
	
	
}
