package bean;

public class toddler {
	private String toddlerName;
	private int id, age;
	private babySitter babysitter;
	public babySitter getBabysitter() {
		return babysitter;
	}
	public void setBabysitter(babySitter babysitter) {
		this.babysitter = babysitter;
	}
	public String getToddlerName() {
		return toddlerName;
	}
	public void setToddlerName(String toddlerName) {
		this.toddlerName = toddlerName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	

}
