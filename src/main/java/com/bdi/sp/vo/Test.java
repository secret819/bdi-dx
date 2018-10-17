package com.bdi.sp.vo;

import org.springframework.stereotype.Component;

@Component
public class Test {

	private Integer tiNum;
	private String tiId;
	private String tiPwd;
	private String tiName;
	private String tibirth;
	private String tiEmail;
	private String tiHobby;
	private String tiAddress;
	private String tiPhone;
	private Integer tiAge;
	public Integer getTiNum() {
		return tiNum;
	}
	public void setTiNum(Integer tiNum) {
		this.tiNum = tiNum;
	}
	public String getTiId() {
		return tiId;
	}
	public void setTiId(String tiId) {
		this.tiId = tiId;
	}
	public String getTiPwd() {
		return tiPwd;
	}
	public void setTiPwd(String tiPwd) {
		this.tiPwd = tiPwd;
	}
	public String getTiName() {
		return tiName;
	}
	public void setTiName(String tiName) {
		this.tiName = tiName;
	}
	public String getTibirth() {
		return tibirth;
	}
	public void setTibirth(String tibirth) {
		this.tibirth = tibirth;
	}
	public String getTiEmail() {
		return tiEmail;
	}
	public void setTiEmail(String tiEmail) {
		this.tiEmail = tiEmail;
	}
	public String getTiHobby() {
		return tiHobby;
	}
	public void setTiHobby(String tiHobby) {
		this.tiHobby = tiHobby;
	}
	public String getTiAddress() {
		return tiAddress;
	}
	public void setTiAddress(String tiAddress) {
		this.tiAddress = tiAddress;
	}
	public String getTiPhone() {
		return tiPhone;
	}
	public void setTiPhone(String tiPhone) {
		this.tiPhone = tiPhone;
	}
	public Integer getTiAge() {
		return tiAge;
	}
	public void setTiAge(Integer tiAge) {
		this.tiAge = tiAge;
	}
	@Override
	public String toString() {
		return "Test [tiNum=" + tiNum + ", tiId=" + tiId + ", tiPwd=" + tiPwd + ", tiName=" + tiName + ", tibirth="
				+ tibirth + ", tiEmail=" + tiEmail + ", tiHobby=" + tiHobby + ", tiAddress=" + tiAddress + ", tiPhone="
				+ tiPhone + ", tiAge=" + tiAge + "]";
	}
	
	
}
