package com.lab.bean;

/**
 * @date 2018.4.11
 * @author 宋宗垚
 *	项目或者论文类，应该与数据库中的项目和论文信息相匹配
 *	属性：
 *	id、
 *	 名字、
 *	简介、
 *	图片路径
 */
public class Project {
	private int id;
	private String name;
	private String introduction;
	private String imagePath;
	private String link;
	private String date;
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
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
