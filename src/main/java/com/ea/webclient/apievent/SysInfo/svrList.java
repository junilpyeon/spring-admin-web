package com.ea.webclient.apievent.SysInfo;

import java.util.List;

public class svrList {
 List<SysInfo> SvrList;
 
 public List<SysInfo> getSvrList() {
		return SvrList;
	}

	public void setSvrList(List<SysInfo> SvrList) {
		this.SvrList = SvrList;
	}

	 public SysInfo getSvrList(int idx) {
			return SvrList.get(idx);
		}
}
