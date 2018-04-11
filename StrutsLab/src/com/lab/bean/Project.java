package com.lab.bean;

/**
 * @date 2018.4.11
 * @author 宋宗垚
 *	项目或者论文类，应该与数据库中的项目和论文信息相匹配
 *	每个project有一个id、 名字、简介、图片路径
 */
public class Project {
	private int id;
	private String name;
	private String info;
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
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
}
