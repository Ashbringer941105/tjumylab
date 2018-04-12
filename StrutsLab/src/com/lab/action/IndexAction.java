package com.lab.action;

import java.util.ArrayList;

import com.lab.bean.SliderImage;
import com.lab.utils.GetData;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

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
