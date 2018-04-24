package com.lab.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.lab.utils.GetData;
import com.lab.bean.Member;

/**
 * 
* Copyright: Copyright (c) 2018 songzongyao
* 
* @ClassName: MemberlistAction.java
* @Description: 继承了ActionSupport类的action，响应memberlist的action。
* 从数据库中查询在memberlist页面上需要展示的人员信息，然后放到Session中
*
* @version: v1.0.0
* @author: songzongyao
* @date: 2018年4月13日 上午9:43:28 
*
* Modification History:
* Date         Author          Version            Description
*---------------------------------------------------------*
* 2018年4月13日     songzongyao           v1.0.0               修改原因
* 2018年4月23日   宋宗垚									将teacher和student合并为一个member类
 */
public class MemberlistAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception{
		//获得ActionContext
		ActionContext ac = ActionContext.getContext();
		//获得所有的teacher
		GetData gd = new GetData();
		ArrayList<Member> teacherlist = gd.getMembers("教师");
		ArrayList<Member> studentlist = gd.getMembers("在校研究生");
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
