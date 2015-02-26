package model.domain;

public class FestivalVo {
	private String festivalNum;
	private String festivalName;
	private String city;
	private String summary;
	private String festivalStartDay;
	private String festivalEndDay;
	private String mapUrl;
	private String adress;
	private String detail;
	private String homepage;
	private String country;
	
	public FestivalVo() {}

	
	
	public FestivalVo(String festivalStartDay, String festivalEndDay) {
		super();
		this.festivalStartDay = festivalStartDay;
		this.festivalEndDay = festivalEndDay;
	}



	public FestivalVo(String festivalNum, String festivalName, String city,
			String summary, String festivalStartDay, String festivalEndDay,
			String mapUrl, String adress, String detail, String homepage, String country) {
		super();
		this.festivalNum = festivalNum;
		this.festivalName = festivalName;
		this.city = city;
		this.summary = summary;
		this.festivalStartDay = festivalStartDay;
		this.festivalEndDay = festivalEndDay;
		this.mapUrl = mapUrl;
		this.adress = adress;
		this.detail = detail;
		this.homepage = homepage;
		this.country = country;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getFestivalStartDay() {
		return festivalStartDay;
	}

	public void setFestivalStartDay(String festivalStartDay) {
		this.festivalStartDay = festivalStartDay;
	}

	public String getFestivalEndDay() {
		return festivalEndDay;
	}

	public void setFestivalEndDay(String festivalEndDay) {
		this.festivalEndDay = festivalEndDay;
	}

	public String getMapUrl() {
		return mapUrl;
	}

	public void setMapUrl(String mapUrl) {
		this.mapUrl = mapUrl;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FestivalVo [festivalNum=");
		builder.append(festivalNum);
		builder.append(", festivalName=");
		builder.append(festivalName);
		builder.append(", city=");
		builder.append(city);
		builder.append(", summary=");
		builder.append(summary);
		builder.append(", festivalStartDay=");
		builder.append(festivalStartDay);
		builder.append(", festivalEndDay=");
		builder.append(festivalEndDay);
		builder.append(", mapUrl=");
		builder.append(mapUrl);
		builder.append(", adress=");
		builder.append(adress);
		builder.append(", detail=");
		builder.append(detail);
		builder.append(", homepage=");
		builder.append(homepage);
		builder.append(", country=");
		builder.append(country);
		builder.append("]");
		return builder.toString();
	}
	
}
