package com.jbit.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Video {
	private int id;
	private String videoTitle;
	private String videoManual;
	private String videocontent;
	private String videoUrl;
	private String videoImgUrl;
	private Date videoAddTime;
	private int videoStatus;
	private int VideoType;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getVideoTitle() {
		return videoTitle;
	}
	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}
	public String getVideoManual() {
		return videoManual;
	}
	public void setVideoManual(String videoManual) {
		this.videoManual = videoManual;
	}
	public String getVideocontent() {
		return videocontent;
	}
	public void setVideocontent(String videocontent) {
		this.videocontent = videocontent;
	}
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getVideoImgUrl() {
		return videoImgUrl;
	}
	public void setVideoImgUrl(String videoImgUrl) {
		this.videoImgUrl = videoImgUrl;
	}
	public String getVideoAddTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(videoAddTime);
	}
	public void setVideoAddTime(Date videoAddTime) {
		this.videoAddTime = videoAddTime;
	}
	public int getVideoStatus() {
		return videoStatus;
	}
	public void setVideoStatus(int videoStatus) {
		this.videoStatus = videoStatus;
	}
	public int getVideoType() {
		return VideoType;
	}
	public void setVideoType(int videoType) {
		VideoType = videoType;
	}
	@Override
	public String toString() {
		return "Video [id=" + id + ", videoTitle=" + videoTitle + ", videoManual=" + videoManual + ", videocontent="
				+ videocontent + ", videoUrl=" + videoUrl + ", videoImgUrl=" + videoImgUrl + ", videoAddTime="
				+ videoAddTime + ", videoStatus=" + videoStatus + ", VideoType=" + VideoType + "]";
	}
}
