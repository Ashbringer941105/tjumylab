package com.lab.bean;

/**
 * @date 2018.4.12
 * @author 宋宗垚
 * 教师类
 * 
 *
 */

public class Teacher {
	private int id;
	private String name;
	private String gender;
	private String imagePath;
	private String homePagePath;
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
	public String getHomePagePath() {
		return homePagePath;
	}
	public void setHomePagePath(String homePagePath) {
		this.homePagePath = homePagePath;
	}
	
}
