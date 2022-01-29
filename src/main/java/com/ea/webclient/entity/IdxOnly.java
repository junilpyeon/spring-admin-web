package com.ea.webclient.entity;

import lombok.Data;

@Data
public class IdxOnly {
	private Integer extSysIndex;
	private String extSysName;
	
	public IdxOnly(Integer extSysIndex, String extSysName) {
		this.setextSysIndex(extSysIndex);
		this.setextSysName(extSysName);
	}
	
	public IdxOnly() {

	}

	public Integer getextSysIndex() {
		return extSysIndex;
	}

	public void setextSysIndex(Integer extSysIndex) {
		extSysIndex = extSysIndex;
	}

	public String getextSysName() {
		return extSysName;
	}

	public void setextSysName(String extSysName) {
		extSysName = extSysName;
	}

}
