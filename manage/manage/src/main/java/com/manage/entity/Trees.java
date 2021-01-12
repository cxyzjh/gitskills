package com.manage.entity;

public class Trees {
	private String id;
	private String pid;
	private String name;
	private String url;
	private String icon;
	private String pname;
	private String _parentId;
	public final String getId() {
		return id;
	}
	public final void setId(String id) {
		this.id = id;
	}
	public final String getPid() {
		return pid;
	}
	public final void setPid(String pid) {
		this.pid = pid;
	}
	public final String getName() {
		return name;
	}
	public final void setName(String name) {
		this.name = name;
	}
	public final String getUrl() {
		return url;
	}
	public final void setUrl(String url) {
		this.url = url;
	}
	public final String getIcon() {
		return icon;
	}
	public final void setIcon(String icon) {
		this.icon = icon;
	}
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String get_parentId() {
		return _parentId;
	}
	public void set_parentId(String _parentId) {
		this._parentId = _parentId;
	}
	
	
}
