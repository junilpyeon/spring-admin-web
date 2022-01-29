package com.ea.webclient.apievent.ExtSystem;

import java.util.List;

public class extSvr {
	List<ExtSystemApi> ExtSvr;
	
	public List<ExtSystemApi> getExtSvr() {
		return ExtSvr;
	}

	public void setExtSvr(List<ExtSystemApi> ExtSvr) {
		this.ExtSvr = ExtSvr;
	}

	 public ExtSystemApi getExtSvr(int idx) {
			return ExtSvr.get(idx);
		}
}
