package com.newlecture.web.controller;

public class Notice {
	
	private int idx;
	private String title;
	private String name;
	private String file;
	private String textArea;
	private String dateTime;
	
	public Notice() {
		
	}
	
	public Notice(int idx, String title, String name, String dateTime,String file, String textArea) {
		this.idx = idx;
		this.title = title;
		this.name = name;
		this.file = file;
		this.textArea = textArea;
		this.dateTime=dateTime;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}
	
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getTextArea() {
		return textArea;
	}

	public void setTextArea(String textArea) {
		this.textArea = textArea;
	}

	@Override
	public String toString() {
		return "Notice [idx=" + idx + ", title=" + title + ", name=" + name + ", date=" + file + ", textArea="
				+ textArea + "]";
	}
	
}
