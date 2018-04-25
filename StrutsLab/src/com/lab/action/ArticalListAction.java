package com.lab.action;

import java.util.ArrayList;

import com.lab.bean.Paper;
import com.lab.bean.Project;
import com.lab.utils.GetData;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ArticalListAction extends ActionSupport {
	

	@Override
	public String execute() throws Exception {
		
		ActionContext ac = ActionContext.getContext();
		GetData gd = new GetData();
		
		ArrayList<Paper> papers = gd.getPapers();
		ArrayList<Project> projects = gd.getProjects();
		
		int paper_number = papers.size();
		int project_number = projects.size();
		
		System.out.println("papers 的长度为"+((Integer)paper_number).toString()+"");
		System.out.println("project 的长度为"+((Integer)project_number).toString()+"");
		
		ac.getSession().put("papers", papers);
		ac.getSession().put("projects", projects);
		return SUCCESS;
	}

}
