package model.domain;

import java.io.Serializable;

public class StudentVo implements Serializable{
	private String no;
	private String name;
	private int age;
	private String address;
	private String phone;
	
	public StudentVo() {}
	public StudentVo(String no, String name, int age, String address, String phone) {
		super();
		this.no = no;
		this.name = name;
		this.age = age;
		this.address = address;
		this.phone = phone;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("StudentVo [no=");
		builder.append(no);
		builder.append(", name=");
		builder.append(name);
		builder.append(", age=");
		builder.append(age);
		builder.append(", address=");
		builder.append(address);
		builder.append(", phone=");
		builder.append(phone);
		builder.append("]");
		return builder.toString();
	}
}
