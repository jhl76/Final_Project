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
}
