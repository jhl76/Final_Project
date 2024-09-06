package com.project.mvc;

import java.util.ArrayList;

public interface IPosterDAO
{
	// 아이디 중복성 검사
	public int search(String posterId);
	
	// 구인자 추가
	public int add(PosterDTO dto);
	
	// 구인자 공고 현황 리스트
	public ArrayList<JobPostingStatusDTO> PostingList(String loginId);
	
	// 구인자 마이페이지 리스트
	public PosterDTO posterMypage(String loginId);
	
	// 구인자의 3년동안의 채용 완료한 공고 리스트
	public ArrayList<PosterDTO> posterPosting(String pId);
	
	// 구인자 마이페이지 수정
	public int posterMyPageUpdate(PosterDTO dto);
	
	// 구인자 회사명, 회사위치 수정
	public int updateCompany(PosterDTO dto);
	
	// 구인자 사업자등록번호 수정
	public int updatePosterCompanyInfo(PosterDTO dto);
}
