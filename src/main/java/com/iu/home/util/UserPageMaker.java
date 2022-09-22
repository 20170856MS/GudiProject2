package com.iu.home.util;

import org.springframework.stereotype.Component;

@Component
public class UserPageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int pageBlock = 10;
	private UserCriteria cri;
	
	
	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getPageBlock() {
		return pageBlock;
	}

	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public UserCriteria getCri() {
		return cri;
	}

	public void setCri(UserCriteria cri) {
		this.cri = cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();	// 계산
	}
	
	
	private void calcData() {
		endPage = (int)Math.ceil(cri.getPage() / (double) pageBlock) * pageBlock;
		startPage = (endPage - pageBlock) + 1;
	
		// 임시 엔드페이지.
		int tmpEndPage = (int)Math.ceil(totalCount / (double)cri.getPerPageNum());
		if(endPage > tmpEndPage) { endPage = tmpEndPage; }
		
		// 이전과 다음
		prev = startPage == 1 ? false :  true;
		next = endPage * cri.getPerPageNum() >= totalCount? false : true;
		System.out.println("UserPageMaker 페이지메이커: " + endPage);
	}
	
}
