package com.jbit.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Theme {
	private int id;
	private String fileTtle;
	private String fileDirections;
	private String fileContent;
	private Date fileAddtime;
	private String fileUrl;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFileTtle() {
		return fileTtle;
	}
	public void setFileTtle(String fileTtle) {
		this.fileTtle = fileTtle;
	}
	public String getFileDirections() {
		return fileDirections;
	}
	public void setFileDirections(String fileDirections) {
		this.fileDirections = fileDirections;
	}
	public String getFileContent() {
		return fileContent;
	}
	public void setFileContent(String fileContent) {
		this.fileContent = fileContent;
	}
	public String getFileAddtime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(fileAddtime);
	}
	public void setFileAddtime(Date fileAddtime) {
		this.fileAddtime = fileAddtime;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	@Override
	public String toString() {
		return "Theme [id=" + id + ", fileTtle=" + fileTtle + ", fileDirections=" + fileDirections + ", fileContent="
				+ fileContent + ", fileAddtime=" + fileAddtime + ", fileUrl=" + fileUrl + "]";
	}
}
