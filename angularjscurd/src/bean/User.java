package bean;

public class User {

	private int uid;
	private String name;
	private String email;
	private int age;
	private String password;
	
	
	
	
	public User() {
		super();
	}
	public User(int uid, String name, String email, int age, String password) {
		super();
		this.uid = uid;
		this.name = name;
		this.email = email;
		this.age = age;
		this.password = password;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
