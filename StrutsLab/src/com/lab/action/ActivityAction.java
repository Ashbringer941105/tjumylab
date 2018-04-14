package com.lab.action;

import java.util.ArrayList;

import com.lab.bean.Activity;
import com.lab.bean.SliderImage;
import com.lab.utils.GetData;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * Copyright: Copyright (c) 2018 songzongyao
 * 
 * @ClassName: ActivityAction.java
 * @Description: 继承了ActionSupport类的action，响应activity的action。
 *               从数据库中查询在activity页面上需要展示的实验室活动信息，然后放到Session中
 * 
 * @version: v1.0.0
 * @author: songzongyao
 * @date: 2018年4月13日 上午11:05:13
 * 
 *        Modification History: Date Author Version Description
 *        ---------------------------------------------------------* 2018年4月13日
 *        songzongyao v1.0.0 创建该类
 */
public class ActivityAction extends ActionSupport {
	@Override
	public String execute() throws Exception {
		// 获得ActionContext
		ActionContext ac = ActionContext.getContext();
		// 获得所有的teacher
		GetData gd = new GetData();
		
		ArrayList<Activity> activities = gd.getActivities();
		int al = activities.size();
		System.out.println("activities 的长度为"+((Integer)al).toString()+"");
		ac.getSession().put("activities", activities);
		return SUCCESS;
	}
}
