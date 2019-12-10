package cn.gingost.pojo;

import lombok.Data;

@Data
public class User {
	private Integer id;
	private String username;
	private String userpwd;
	private Long userphone;
	private String useremail;
	private String question;
	private String answer;
}
