package com.project.mvc;

public class PosterDTO
{
	private int pId;						// 구인자 번호
	private int piId;						// 구인자 정보 번호
	private int pciId;						// 구인자 회사 정보 번호
	private int cId;						// 구인자 회사 번호
	private String loginId;					// 구인자 아이디
	private String posterPwd;				// 구인자 비밀번호
	private String posterName;				// 구인자 이름
	private String posterTel;				// 구인자 전화번호
	private String posterEmail;				// 구인자 이메일
	private String posterSsn;				// 구인자 주민번호 앞자리
	
	
	public int getpId()
	{
		return pId;
	}
	public void setpId(int pId)
	{
		this.pId = pId;
	}
	public int getPiId()
	{
		return piId;
	}
	public void setPiId(int piId)
	{
		this.piId = piId;
	}
	public int getPciId()
	{
		return pciId;
	}
	public void setPciId(int pciId)
	{
		this.pciId = pciId;
	}
	public int getcId()
	{
		return cId;
	}
	public void setcId(int cId)
	{
		this.cId = cId;
	}
	public String getLoginId()
	{
		return loginId;
	}
	public void setLoginId(String loginId)
	{
		this.loginId = loginId;
	}
	public String getPosterPwd()
	{
		return posterPwd;
	}
	public void setPosterPwd(String posterPwd)
	{
		this.posterPwd = posterPwd;
	}
	public String getPosterName()
	{
		return posterName;
	}
	public void setPosterName(String posterName)
	{
		this.posterName = posterName;
	}
	public String getPosterTel()
	{
		return posterTel;
	}
	public void setPosterTel(String posterTel)
	{
		this.posterTel = posterTel;
	}
	public String getPosterEmail()
	{
		return posterEmail;
	}
	public void setPosterEmail(String posterEmail)
	{
		this.posterEmail = posterEmail;
	}
	public String getPosterSsn()
	{
		return posterSsn;
	}
	public void setPosterSsn(String posterSsn)
	{
		this.posterSsn = posterSsn;
	}

	

	
}
