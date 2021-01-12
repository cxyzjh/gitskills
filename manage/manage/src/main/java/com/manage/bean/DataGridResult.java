package com.manage.bean;

import java.util.List;
/**
 * 接受返回的数据,也用于分页
 * @author Administrator
 *
 * @param <T>
 */
public class DataGridResult<T> {
	private int total;
	private List<T> rows;
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
}
