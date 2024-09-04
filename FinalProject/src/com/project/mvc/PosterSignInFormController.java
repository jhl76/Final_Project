package com.project.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PosterSignInFormController
{
	@RequestMapping(value = "/postersigninform.action", method = RequestMethod.GET)
	public String PosterSignInForm()
	{
		return "/WEB-INF/view/PosterSigninForm.jsp";
	}
}
