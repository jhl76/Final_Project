package com.project.mvc;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PosterSignInFormController
{
	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping(value = "/postersigninform.action", method = RequestMethod.GET)
	public String PosterSignInForm()
	{
		return "/WEB-INF/view/PosterSigninForm.jsp";
	}
	
	@RequestMapping(value = "/ajax.action")
	public String checkId(String posterId, Model model)
	{
		IPosterDAO dao = sqlsession.getMapper(IPosterDAO.class);
		
        int count = dao.search(posterId);
        model.addAttribute("count", count);
        
        return "/WEB-INF/view/idCheck.jsp";
	}
}
