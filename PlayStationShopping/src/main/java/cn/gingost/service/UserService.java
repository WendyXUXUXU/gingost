package cn.gingost.service;

import cn.gingost.pojo.User;

public interface UserService {
	public User findOne(String username, String userpwd);

	public void checkReg(String username, String useremail, Long userphone);

	public int addOne(User user);
	
	public User resetPwd(String username);
}
