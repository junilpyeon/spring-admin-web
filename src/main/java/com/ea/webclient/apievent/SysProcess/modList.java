package com.ea.webclient.apievent.SysProcess;

import java.util.List;


public class modList {
	List<SysProcess> ModList;
	
	public List<SysProcess> getSvrList() {
		return ModList;
	}

	public void setSvrList(List<SysProcess> ModList) {
		this.ModList = ModList;
	}

	 public SysProcess getModList(int idx) {
			return ModList.get(idx);
		}
}
