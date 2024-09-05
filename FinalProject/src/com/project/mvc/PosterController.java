package com.project.mvc;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PosterController
{
	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping(value = "/postersigninform.action")
	public String PosterSignInForm()
	{
		return "/PosterSigninForm";
	}
	
	@RequestMapping(value = "/ajax.action")
	public String checkId(String posterId, Model model)
	{
		IPosterDAO dao = sqlsession.getMapper(IPosterDAO.class);
		
        int count = dao.search(posterId);
        model.addAttribute("count", count);
        
        return "/idCheck";
	}
	
	@RequestMapping(value = "/jobpostingstatus.action", method = RequestMethod.GET)
	public String JobPostingStatus(Model model, HttpServletRequest request)
	{
		IPosterDAO dao = sqlsession.getMapper(IPosterDAO.class);
		
		//String loginId = request.getParameter("loginId");
		String loginId = "asd1234";
		
		model.addAttribute("list", dao.PostingList(loginId));
		
		return "/JobpostingStatus";
	}
}
