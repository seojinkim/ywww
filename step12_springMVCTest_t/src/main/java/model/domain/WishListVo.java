package model.domain;

public class WishListVo {
	private String id;
	private String festivalNum;
	
	public WishListVo() {}

	public WishListVo(String id, String festivalNum) {
		super();
		this.id = id;
		this.festivalNum = festivalNum;
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WishListVo [id=");
		builder.append(id);
		builder.append(", festivalNum=");
		builder.append(festivalNum);
		builder.append("]");
		return builder.toString();
	}
	
}
