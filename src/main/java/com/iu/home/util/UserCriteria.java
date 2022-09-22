package com.iu.home.util;

import org.springframework.stereotype.Component;

@Component
public class UserCriteria {
	private int page;
	private int perPageNum;
	
	public int getPage() {
		return page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public UserCriteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {
		// 페이지 사이즈 (한 페이지에 perPageNum만큼 출력하게 하기)
		if (!(0 < perPageNum && perPageNum < 100)) {
			this.perPageNum = 10;
			return;
		}
		
		this.perPageNum = perPageNum;
	}
}
