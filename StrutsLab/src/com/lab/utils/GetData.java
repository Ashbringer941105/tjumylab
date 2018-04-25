package com.lab.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.lab.bean.Activity;
import com.lab.bean.Member;
import com.lab.bean.Paper;
import com.lab.bean.Project;
import com.lab.bean.SliderImage;
import com.lab.dao.DataBaseDao;

/**
 * 
 * Copyright: Copyright (c) 2018 songzongyao
 * 
 * @ClassName: GetData.java
 * @Description: 展示数据的时候获得数据的类，主要用于数据库中数据的展示。将数据库中某个表中的数据取出并以ArrayList的形式返回
 * 
 * @version: v1.0.0
 * @author: songzongyao
 * @date: 2018年4月13日 上午9:17:18
 * 
 *        Modification History: Date Author Version Description
 *        ------------------
 *        ------------------------------------------------------
 *        ------------------* 2018年4月13日 songzongyao v1.0.0
 *        新增getTeachers，getStudents，getSliderImages方法
 */
public class GetData {

	/**
	 * 
	 * @Function: GetData.java
	 * @Description: 根据传入的rolename角色名字（），去数据库中的member表中查找相应的人员，并放在一个ArrayList钟返回
	 * 
	 * @param rolename 是需要查询的成员的角色名字，可选项为1、教师   2、在校研究生
	 * @return：返回一个ArrayList<Member>
	 * @throws：异常描述
	 * 
	 * @version: v2.0.0
	 * @author: songzongyao
	 * @date: 2018年4月13日 上午9:20:25
	 * 
	 */
	public ArrayList<Member> getMembers(String rolename) {
		ArrayList<Member> members = new ArrayList<Member>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from member";
		// 执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		// 然后对rs中的数据进行接收和处理
		try {
			while (rs.next()) {
				Member member = new Member();
				member.setId(rs.getInt("id"));
				member.setGender(rs.getString("gender"));
				member.setHomepage(rs.getString("homepage"));
				member.setImagepath(rs.getString("imagepath"));
				member.setName(rs.getString("name"));
				member.setRolename(rs.getString("rolename"));
				if(member.getRolename().equals(rolename)){
					members.add(member);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return members;

	}

	
	/**
	 * 
	 * @Function: GetData.java
	 * @Description: 获得数据库中sliderimage滑动图片的所有数据
	 * 
	 * @return：返回一个ArrayList<SliderImage>
	 * @throws：异常描述
	 * 
	 * @version: v1.0.0
	 * @author: songzongyao
	 * @date: 2018年4月13日 上午9:22:39
	 * 
	 *        Modification History: Date Author Version Description
	 *        ---------------------------------------------------------*
	 *        2018年4月13日 songzongyao v1.0.0 新建函数
	 */
	public ArrayList<SliderImage> getSliderImages() {
		ArrayList<SliderImage> sliderImages = new ArrayList<SliderImage>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from sliderimage";
		// 执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		// 然后对rs中的数据进行接收和处理
		try {
			while (rs.next()) {
				SliderImage sliderImage = new SliderImage();
				sliderImage.setId(rs.getInt("sliderimage_id"));
				sliderImage.setDate(rs.getString("sliderimage_date"));
				sliderImage.setImagePath(rs.getString("sliderimage_imagepath"));
				sliderImage.setInfo(rs.getString("sliderimage_info"));
				sliderImage.setLink(rs.getString("sliderimage_link"));
				sliderImages.add(sliderImage);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return sliderImages;
	}

	/**
	 * 
	 * @Function: GetData.java
	 * @Description: 获得数据库中activity表中活动信息的所有数据,并将数据按时间的降序排列
	 * 
	 * @return：返回结果描述
	 * 
	 * @version: v1.0.0
	 * @author: songzongyao
	 * @date: 2018年4月13日 上午11:27:12
	 * 
	 *        Modification History: Date Author Version Description
	 *        ---------------------------------------------------------*
	 *        2018年4月13日 songzongyao v1.0.0 新建类
	 */
	public ArrayList<Activity> getActivities() {
		ArrayList<Activity> activities = new ArrayList<Activity>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from activity order by activity_date DESC";
		// 执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		// 然后对rs中的数据进行接收和处理
		try {
			while (rs.next()) {
				Activity activity = new Activity();
				activity.setId(rs.getInt("activity_id"));
				activity.setName(rs.getString("activity_name"));
				activity.setIntroduction(rs.getString("activity_introduction"));
				activity.setImagePath(rs.getString("activity_imagepath"));
				activity.setDate(rs.getString("activity_date"));
				activities.add(activity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return activities;
	}
	
	
	/**
	 * 
	* @Function: GetData.java
	* @Description: 获得数据库中project表中的所有信息并且返回一个ArrayList<Project>
	*
	* @return：ArrayList<Project>
	* @throws：异常描述
	*
	* @version: v1.0.0
	* @author: songzongyao
	* @date: 2018年4月25日 上午9:10:11 
	*
	* Modification History:
	* Date         Author          Version            Description
	*---------------------------------------------------------*
	* 2018年4月25日     songzongyao           v1.0.0               修改原因
	 */
	public ArrayList<Project> getProjects(){
		ArrayList<Project> projects = new ArrayList<Project>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from project";
		// 执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		// 然后对rs中的数据进行接收和处理
		try {
			while(rs.next()){
				Project project = new Project();
				project.setId(rs.getInt("project_id"));
				project.setDate(rs.getString("project_date"));
				project.setImagePath(rs.getString("project_imagepath"));
				project.setIntroduction(rs.getString("project_introduction"));
				project.setLink(rs.getString("project_link"));
				project.setName(rs.getString("project_name"));
				projects.add(project);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return projects;
	}
	
	public ArrayList<Paper> getPapers(){
		ArrayList<Paper> papers = new ArrayList<Paper>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from paper";
		// 执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		// 然后对rs中的数据进行接收和处理
		try {
			while(rs.next()){
				Paper paper = new Paper();
				paper.setId(rs.getInt("paper_id"));
				paper.setAuthor(rs.getString("paper_author"));
				paper.setDate(rs.getString("paper_date"));
				paper.setImagePath(rs.getString("paper_imagepath"));
				paper.setIntroduction(rs.getString("paper_introduction"));
				paper.setLink(rs.getString("paper_link"));
				paper.setName(rs.getString("paper_name"));
				papers.add(paper);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return papers;
		
	}

}
