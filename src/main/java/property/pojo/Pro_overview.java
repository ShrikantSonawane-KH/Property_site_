package property.pojo;

import javax.persistence.Embeddable;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Embeddable
public class Pro_overview {


	private String security;
	private float maintenance;
	private String build_area;
	private int bathroom;
	private int balcony;
	private String available_from;
	private int floor_no;
	private String pro_age;
	private String parking;
	private String entrance_facing;
	
	
	public Pro_overview(String security, float maintenance, String build_area, int bathroom, int balcony,
			String available_from, int floor_no, String pro_age, String parking, String entrance_facing) {
		super();
		this.security = security;
		this.maintenance = maintenance;
		this.build_area = build_area;
		this.bathroom = bathroom;
		this.balcony = balcony;
		this.available_from = available_from;
		this.floor_no = floor_no;
		this.pro_age = pro_age;
		this.parking = parking;
		this.entrance_facing = entrance_facing;
	}
	public Pro_overview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSecurity() {
		return security;
	}
	public void setSecurity(String security) {
		this.security = security;
	}
	public float getMaintenance() {
		return maintenance;
	}
	public void setMaintenance(float maintenance) {
		this.maintenance = maintenance;
	}
	public String getBuild_area() {
		return build_area;
	}
	public void setBuild_area(String build_area) {
		this.build_area = build_area;
	}
	public int getBathroom() {
		return bathroom;
	}
	public void setBathroom(int bathroom) {
		this.bathroom = bathroom;
	}
	public int getBalcony() {
		return balcony;
	}
	public void setBalcony(int balcony) {
		this.balcony = balcony;
	}
	public String getAvailable_from() {
		return available_from;
	}
	public void setAvailable_from(String available_from) {
		this.available_from = available_from;
	}
	public int getFloor_no() {
		return floor_no;
	}
	public void setFloor_no(int floor_no) {
		this.floor_no = floor_no;
	}
	public String getPro_age() {
		return pro_age;
	}
	public void setPro_age(String pro_age) {
		this.pro_age = pro_age;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getEntrance_facing() {
		return entrance_facing;
	}
	public void setEntrance_facing(String entrance_facing) {
		this.entrance_facing = entrance_facing;
	}
	@Override
	public String toString() {
		return "Pro_overview [security=" + security + ", maintenance=" + maintenance + ", build_area=" + build_area
				+ ", bathroom=" + bathroom + ", balcony=" + balcony + ", available_from=" + available_from
				+ ", floor_no=" + floor_no + ", pro_age=" + pro_age + ", parking=" + parking + ", entrance_facing="
				+ entrance_facing + "]";
	}
	


}
