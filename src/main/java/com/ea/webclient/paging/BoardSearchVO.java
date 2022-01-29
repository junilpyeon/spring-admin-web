package com.ea.webclient.paging;

import lombok.Data;

@Data
public class BoardSearchVO extends ListPagingVO{
	
	private String title;
	private String usr_id;
	private String usr_name;
	private long bbs_sno;
	private long blt_rsrc_sno;
	
	private int startRow;
	private int endRow;
	public int getPageSize() {
		// TODO Auto-generated method stub
		return 10;
	}
	public int getPageGroupSize() {
		// TODO Auto-generated method stub
		return 10;
	}
	public int getPageIndex() {
		// TODO Auto-generated method stub
		return 1;
	}
	
	
	public void setStartRow(int startRow) {
		// TODO Auto-generated method stub
		
	}
	public void setEndRow(int endRow) {
		// TODO Auto-generated method stub
		
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUsr_id() {
		return usr_id;
	}
	public void setUsr_id(String usr_id) {
		this.usr_id = usr_id;
	}
	public String getUsr_name() {
		return usr_name;
	}
	public void setUsr_name(String usr_name) {
		this.usr_name = usr_name;
	}
	public long getBbs_sno() {
		return bbs_sno;
	}
	public void setBbs_sno(long bbs_sno) {
		this.bbs_sno = bbs_sno;
	}
	public long getBlt_rsrc_sno() {
		return blt_rsrc_sno;
	}
	public void setBlt_rsrc_sno(long blt_rsrc_sno) {
		this.blt_rsrc_sno = blt_rsrc_sno;
	}
	

}
