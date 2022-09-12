package com.iu.home.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	
	//선언만 된 경우 -> 기본값 null인 상황
	
	
	public String saveFile(String path,ServletContext servletContext,MultipartFile multipartFile) throws Exception{
		// 1. 실제 경로
		String realPath = servletContext.getRealPath(path);
		System.out.println(realPath);
		
		// 2. 폴더(directory) 체크
		File file = new File(realPath);
		
		if(!file.exists()) {
  		  file.mkdirs(); // 파일 없으면 만들기 mkdirs
		} 
		
		//3.저장할 파일명 생성
		String fileName = UUID.randomUUID().toString();
		fileName = fileName +"_"+multipartFile.getOriginalFilename();
		file = new File(file,fileName);
		multipartFile.transferTo(file);
		
		
		return fileName;
	}

}
