package com.project.mvc;

public interface IPosterDAO
{
	// 아이디 중복성 검사
	public int search(String posterId);
}
