package com.lab.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.lab.bean.Student;
import com.lab.bean.Teacher;
import com.lab.utils.GetData;

public class MemberlistAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception{
		//获得ActionContext
		ActionContext ac = ActionContext.getContext();
		//获得所有的teacher
		GetData gd = new GetData();
		ArrayList<Teacher> teacherlist = gd.getTeachers();
		ArrayList<Student> studentlist = gd.getStudents();
		//测试用检查是否得到信息的tt
		int tl = teacherlist.size();
		int sl = studentlist.size();
		System.out.println("查询得到了"+((Integer)tl).toString()+"个老师");
		System.out.println("查询得到了"+((Integer)sl).toString()+"个学生");
		//然后放到ActionContext ac中，这样就可以在jsp文件中获得
		ac.getSession().put("teacherlist", teacherlist);
		ac.getSession().put("studentlist", studentlist);

		return SUCCESS;
	}

}
