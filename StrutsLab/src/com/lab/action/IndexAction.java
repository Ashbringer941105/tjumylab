package com.lab.action;

import java.util.ArrayList;

import com.lab.bean.SliderImage;
import com.lab.utils.GetData;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
* Copyright: Copyright (c) 2018 songzongyao
* 
* @ClassName: IndexAction.java
* @Description: 继承了ActionSupport类的action，响应index的action。
* 从数据库中查询在index页面上需要展示的轮播图片，然后放到Session中
*
* @version: v1.0.0
* @author: songzongyao
* @date: 2018年4月13日 上午9:39:25 
*
* Modification History:
* Date         Author          Version            Description
*---------------------------------------------------------*
* 2018年4月13日     songzongyao           v1.0.0               修改原因
 */
public class IndexAction extends ActionSupport {
	public String execute() throws Exception {
		// 获得ActionContext
		ActionContext ac = ActionContext.getContext();
		// 获得所有的teacher
		GetData gd = new GetData();
		ArrayList<SliderImage> sliderImages = gd.getSliderImages();
		int sl = sliderImages.size();
		ac.getSession().put("sliderImages", sliderImages);
		System.out.println("查询得到了"+((Integer)sl).toString()+"个轮播图片");
		return SUCCESS;
	}
}
