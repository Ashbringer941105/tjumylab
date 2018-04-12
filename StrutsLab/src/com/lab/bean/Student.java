package com.lab.bean;



/**
 * @date 2018.4.11
 * @author 宋宗垚
 *	学生类，应该与数据库中的人员信息相匹配
 *	每个学生有自己的一个
 *	id，
 *	姓名，
 *	性别
 *	照片路径（此处照片属性存放的是路径）
 *	个人主页的连接
 *	学生的毕业信息
 *
 */

public class Student {
	private int id;
	private String name;
	private String gender;
	private String imagePath;
	private String homePagePath;
	private String graduateinfo;
	
	 
	public String isGraduateinfo() {
		return graduateinfo;
	}
	public void setGraduateinfo(String graduateinfo) {
		this.graduateinfo = graduateinfo;
	}
	public String getHomePagePath() {
		return homePagePath;
	}
	public void setHomePagePath(String homePagePath) {
		this.homePagePath = homePagePath;
	}
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
