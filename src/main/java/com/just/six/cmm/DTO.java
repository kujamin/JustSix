package com.just.six.cmm;

public class DTO {
	
	private int idChk; //아이디 중복확인
	
	public DTO () {}

	public int getIdChk() {
		return idChk;
	}

	public void setIdChk(int idChk) {
		this.idChk = idChk;
	}

	@Override
	public String toString() {
		return "DTO [idChk=" + idChk + "]";
	}
	
	
}
