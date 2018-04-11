package com.lab.bean;

/**
 * @date 2018.4.11
 * @author 宋宗垚
 *	人员类，应该与数据库中的人员信息相匹配
 *	每个人员有自己的一个id，姓名，性别，和照片路径（此处照片属性存放的是路径）
 */
public class People {
	private int id;
	private String name;
	private String gender;
	private String imagePath;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
}
