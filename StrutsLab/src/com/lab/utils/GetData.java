package com.lab.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lab.bean.SliderImage;
import com.lab.bean.Student;
import com.lab.bean.Teacher;
import com.lab.dao.DataBaseDao;

public class  GetData{
	
	public ArrayList<Teacher> getTeachers(){
		ArrayList<Teacher> teachers = new ArrayList<Teacher>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from teacher";
		//执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		//然后对rs中的数据进行接收和处理
		try{
		while(rs.next()){
			Teacher teacher = new Teacher();
			teacher.setId(rs.getInt("teacher_id"));
			teacher.setName(rs.getString("teacher_name"));
			teacher.setImagePath(rs.getString("teacher_imagepath"));
			teacher.setHomePagePath(rs.getString("teacher_homepage"));
			teacher.setGender(rs.getString("teacher_gender"));
			teachers.add(teacher);
	
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return teachers;
		
	}
	
	public ArrayList<Student> getStudents(){
		ArrayList<Student> students = new ArrayList<Student>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from student";
		//执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		//然后对rs中的数据进行接收和处理
		try{
		while(rs.next()){
			Student student = new Student();
			student.setId(rs.getInt("student_id"));
			student.setName(rs.getString("student_name"));
			student.setImagePath(rs.getString("student_imagepath"));
			student.setHomePage(rs.getString("student_homepage"));
			student.setGender(rs.getString("student_gender"));
			student.setGraduateInfo(rs.getString("student_graduateinfo"));
			students.add(student);
	
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return students;
	}
	
	public ArrayList<SliderImage> getSliderImages(){
		ArrayList<SliderImage> sliderImages = new ArrayList<SliderImage>();
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		String sql = "select * from sliderimage";
		//执行SQL语句 用rs接收查询结果
		ResultSet rs = db.findSQL(connection, sql);
		//然后对rs中的数据进行接收和处理
		try{
		while(rs.next()){
			SliderImage sliderImage = new SliderImage();
			sliderImage.setId(rs.getInt("sliderimage_id"));
			sliderImage.setDate(rs.getString("sliderimage_date"));
			sliderImage.setImagePath(rs.getString("sliderimage_imagepath"));
			sliderImage.setInfo(rs.getString("sliderimage_info"));
			sliderImage.setLink(rs.getString("sliderimage_link"));
			sliderImages.add(sliderImage);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return sliderImages;
	}
	
	
}
