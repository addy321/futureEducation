package com.jbit.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Leavemag {
	private int id;
	private String userName;
	private Date addTime;
	private int status;
	private String content;
	private String nickname;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public String getAddTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(addTime);
	}
	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Leavemag [id=" + id + ", userName=" + userName + ", addTime=" + addTime + ", status=" + status
				+ ", content=" + content + ", nickname=" + nickname + "]";
	}
}
