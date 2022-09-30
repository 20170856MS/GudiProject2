package com.iu.home.licenseList;

import com.iu.home.licenseQna.QnaDTO;

public class LicenseDTO extends QnaDTO {

	private Long licenseNum;
	private Long licenseHits;
	private String licenseName;
	private BookDTO bookDTO;
	private VideoDTO videoDTO;
	private JobDTO jobDTO;
	
	public Long getLicenseNum() {
		return licenseNum;
	}
	public void setLicenseNum(Long licenseNum) {
		this.licenseNum = licenseNum;
	}
	public String getLicenseName() {
		return licenseName;
	}
	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}
	public BookDTO getBookDTO() {
		return bookDTO;
	}
	public void setBookDTO(BookDTO bookDTO) {
		this.bookDTO = bookDTO;
	}
	public VideoDTO getVideoDTO() {
		return videoDTO;
	}
	public void setVideoDTO(VideoDTO videoDTO) {
		this.videoDTO = videoDTO;
	}
	public JobDTO getJobDTO() {
		return jobDTO;
	}
	public void setJobDTO(JobDTO jobDTO) {
		this.jobDTO = jobDTO;
	}
	public Long getLicenseHits() {
		return licenseHits;
	}
	public void setLicenseHits(Long licenseHits) {
		this.licenseHits = licenseHits;
	}
	
}
