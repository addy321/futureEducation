package com.jbit.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Apply {
	private int id;
	private String userName;
	private String nickname;
	private int recruitmentId;
	private String recruitmentName;
	private Date addTime;
	private Recruitment recruitment;
	public Recruitment getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(Recruitment recruitment) {
		this.recruitment = recruitment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getRecruitmentId() {
		return recruitmentId;
	}
	public void setRecruitmentId(int recruitmentId) {
		this.recruitmentId = recruitmentId;
	}
	public String getRecruitmentName() {
		return recruitmentName;
	}
	public void setRecruitmentName(String recruitmentName) {
		this.recruitmentName = recruitmentName;
	}
	public String getAddTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(addTime);
	}
	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	@Override
	public String toString() {
		return "Apply [id=" + id + ", userName=" + userName + ", nickname=" + nickname + ", recruitmentId="
				+ recruitmentId + ", recruitmentName=" + recruitmentName + ", addTime=" + addTime + "]";
	}
}
