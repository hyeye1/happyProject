package com.kh.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {


	@Override
	public File rename(File originFile) {     // 원본파일 받아주는 매개변수명 arg0에서 originFile로 이름 변경 가능
		
		// 원본 파일명 ("aaa.jpg")
		String originName = originFile.getName();
		
		// 수정 파일명 : 파일업로드한시간(년월일시분초)+5자리랜덤값(10000~99999)+확장자(원본파일의확장자)
		
		// 원본명		=> 수정명
		// aaa.jpg	=> 2021040714253045312.jpg
		
		// 1. 파일업로드한시간(년월일시분초)   (String currentTime)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());   // "20210407142530"
		
		// 2. 5자리 랜덤값 (int ranNum)
		int ranNum = (int)(Math.random() * 90000 + 10000); // 45312
		
		// 3. 기존파일의 확장자 (String ext)
		String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
		
		// 수정명 완성!
		String changeName = currentTime + ranNum + ext; // "2021040714253045312.jpg"
		
		// 전달받은 원본파일(originFile)을 수정된 파일명으로 파일객체 생성해서 반환
		return new File(originFile.getParent(), changeName);
		
		
	}

}