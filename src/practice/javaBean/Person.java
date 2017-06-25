package practice.javaBean;

public class Person {
	//成员变量
	private String username;
	private String sex;
	private int age;
	
	public Person(String username, String sex, int age) {
		super();
		this.username = username;
		this.sex = sex;
		this.age = age;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	//JavaBean属性
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Person [username=" + username + ", age=" + age + ", sex=" + sex + "]";
	}
}
