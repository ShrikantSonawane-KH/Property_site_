package property.pojo;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Embeddable
public class Pro_Description {

	private String furnished;
	private String pro_status;
	private String special_highlights;
	private Pro_overview overview;
	
	public Pro_Description() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pro_Description(int id, String furnished, String pro_status, String special_highlights,
			Pro_overview overview) {
		super();
	
		this.furnished = furnished;
		this.pro_status = pro_status;
		this.special_highlights = special_highlights;
		this.overview = overview;
	}
	public Pro_Description(String furnished, String pro_status, String special_highlights, Pro_overview overview) {
		super();
		this.furnished = furnished;
		this.pro_status = pro_status;
		this.special_highlights = special_highlights;
		this.overview = overview;
	}
	
	public String getFurnished() {
		return furnished;
	}
	public void setFurnished(String furnished) {
		this.furnished = furnished;
	}
	public String getPro_status() {
		return pro_status;
	}
	public void setPro_status(String pro_status) {
		this.pro_status = pro_status;
	}
	public String getSpecial_highlights() {
		return special_highlights;
	}
	public void setSpecial_highlights(String special_highlights) {
		this.special_highlights = special_highlights;
	}
	public Pro_overview getOverview() {
		return overview;
	}
	public void setOverview(Pro_overview overview) {
		this.overview = overview;
	}
	@Override
	public String toString() {
		return "Pro_Description [furnished=" + furnished + ", pro_status=" + pro_status
				+ ", special_highlights=" + special_highlights + ", overview=" + overview + "]";
	}
	
	
	
}
