package property.pojo;



import javax.persistence.Embeddable;


@Embeddable
public class Pro_image {

	private String img_desc;
	private String image;
	public Pro_image() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pro_image(String img_desc, String image) {
		super();
		this.img_desc = img_desc;
		this.image = image;
	}
	public String getImg_desc() {
		return img_desc;
	}
	public void setImg_desc(String img_desc) {
		this.img_desc = img_desc;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Pro_image [img_desc=" + img_desc + ", image=" + image + "]";
	}				
		
	
}

