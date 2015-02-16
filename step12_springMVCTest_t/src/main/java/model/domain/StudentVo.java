package model.domain;

import java.io.Serializable;

public class StudentVo implements Serializable{
	private String id;
	private String pw;
	private String name;
	private String confirm;
	
	public StudentVo() {}
	public StudentVo(String id, String pw, String name, String confirm) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.confirm = confirm;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("StudentVo [id=");
		builder.append(id);
		builder.append(", pw=");
		builder.append(pw);
		builder.append(", name=");
		builder.append(name);
		builder.append(", confirm=");
		builder.append(confirm);
		builder.append("]");
		return builder.toString();
	}
	
}
