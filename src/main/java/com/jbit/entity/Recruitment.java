package com.jbit.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Recruitment {

	private int id;
	private String title;
	private String wageText;
	private String labelText;
	private Date addTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWageText() {
		return wageText;
	}
	public void setWageText(String wageText) {
		this.wageText = wageText;
	}
	public String getLabelText() {
		return labelText;
	}
	public void setLabelText(String labelText) {
		this.labelText = labelText;
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
		return "Recruitment [id=" + id + ", title=" + title + ", wageText=" + wageText + ", labelText=" + labelText
				+ ", addTime=" + addTime + "]";
	}
	
}
