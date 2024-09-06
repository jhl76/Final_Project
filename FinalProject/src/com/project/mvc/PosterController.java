package com.project.mvc;


import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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
		String pId = "1";
		
		model.addAttribute("pId", pId);
		model.addAttribute("loginId", loginId);
		model.addAttribute("list", dao.PostingList(loginId));
		
		return "/JobpostingStatus";
	}
	
	@RequestMapping(value = "/postermypage.action", method = RequestMethod.GET)
	public String PosterMyPage(Model model, String loginId, String pId)
	{
		IPosterDAO dao = sqlsession.getMapper(IPosterDAO.class);
		
		
		PosterDTO dto = dao.posterMypage(loginId);
		
		// 3년 이내 채용 완료한 공고 리스트
		model.addAttribute("postingList", dao.posterPosting(pId));
		
		model.addAttribute("loginId",loginId);
		model.addAttribute("dto", dto);
		
		return "/PosterMyPage";
	}
	
	@RequestMapping(value = "/postermypageupdateform.action", method = RequestMethod.POST)
	public String PosterMyPageUpdateForm(Model model, String loginId)
	{
		IPosterDAO dao = sqlsession.getMapper(IPosterDAO.class);
		
		PosterDTO dto = dao.posterMypage(loginId);
		
		model.addAttribute("dto", dto);
		
		return "/PosterMyPageUpdateForm";
	}
	
	@RequestMapping(value = "/postermypageupdate.action", method = RequestMethod.POST)
	public String PosterMyPageUpdate(PosterDTO dto)
	{
		IPosterDAO dao = sqlsession.getMapper(IPosterDAO.class);
		
		dao.posterMyPageUpdate(dto);
		//dao.updatePosterCompanyInfo(dto);
		//dao.updateCompany(dto);
	
		return "redirect:postermypage.action?loginId=" + dto.getLoginId();
	}
			
	/*
	 * @RequestMapping(value = "/profileimageupload.action", method =
	 * RequestMethod.GET) public String ProfileImageUpload(MultipartFile file,
	 * String profileImage) { if (!file.isEmpty()) { try { String filePath =
	 * "path/to/save/" + file.getOriginalFilename(); File realFile = new
	 * File(filePath);
	 * 
	 * // InputStream을 이용하여 파일을 읽고, FileOutputStream을 이용하여 파일을 저장 try (InputStream
	 * inputStream = file.getInputStream(); FileOutputStream outputStream = new
	 * FileOutputStream(realFile);) {
	 * 
	 * byte[] buffer = new byte[1024]; int bytesRead; while ((bytesRead =
	 * inputStream.read(buffer)) != -1) { outputStream.write(buffer, 0, bytesRead);
	 * } }
	 * 
	 * return "redirect:postermypage.action"; } catch (Exception e) {
	 * System.out.println(e.toString()); } }
	 * 
	 * return "redirect:postermypage.action"; }
	 */
	
	
	
}
