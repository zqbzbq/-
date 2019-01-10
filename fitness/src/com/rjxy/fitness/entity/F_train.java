package com.rjxy.fitness.entity;

import org.springframework.web.multipart.MultipartFile;

public class F_train {

	    private String id;

	    private String trainname;
	   
	    private String content;
	    
	    private String trainuser;
	    
	    private String img;

	    private Integer type;
	    
	    private MultipartFile file;

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getTrainname() {
			return trainname;
		}

		public void setTrainname(String trainname) {
			this.trainname = trainname;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getTrainuser() {
			return trainuser;
		}

		public void setTrainuser(String trainuser) {
			this.trainuser = trainuser;
		}

		public String getImg() {
			return img;
		}

		public void setImg(String img) {
			this.img = img;
		}

		public Integer getType() {
			return type;
		}

		public void setType(Integer type) {
			this.type = type;
		}

		public MultipartFile getFile() {
			return file;
		}

		public void setFile(MultipartFile file) {
			this.file = file;
		}
	    
	    
}
