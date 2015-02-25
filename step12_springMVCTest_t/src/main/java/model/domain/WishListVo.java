package model.domain;

public class WishListVo {
	private String id;
	private String festivalNum;
	private String festivalName;
	
	public WishListVo() {}

	public WishListVo(String id, String festivalNum, String festivalName) {
		super();
		this.id = id;
		this.festivalNum = festivalNum;
		this.festivalName = festivalName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFestivalNum() {
		return festivalNum;
	}

	public void setFestivalNum(String festivalNum) {
		this.festivalNum = festivalNum;
	}

	public String getFestivalName() {
		return festivalName;
	}

	public void setFestivalName(String festivalName) {
		this.festivalName = festivalName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WishListVo [id=");
		builder.append(id);
		builder.append(", festivalNum=");
		builder.append(festivalNum);
		builder.append(", festivalName=");
		builder.append(festivalName);
		builder.append("]");
		return builder.toString();
	}

}
