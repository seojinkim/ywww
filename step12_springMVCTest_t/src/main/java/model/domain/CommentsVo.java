package model.domain;

public class CommentsVo {
	private String email;
	private String name;
	private String message;
	
	public CommentsVo() {}

	public CommentsVo(String email, String name, String message) {
		super();
		this.email = email;
		this.name = name;
		this.message = message;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CommentsVo [email=");
		builder.append(email);
		builder.append(", name=");
		builder.append(name);
		builder.append(", message=");
		builder.append(message);
		builder.append("]");
		return builder.toString();
	}
	
}
