package cn.gingost.dao;



import cn.gingost.pojo.User;

public interface UserMapper {
	public User findOne(User user);
	public void addOne(User user);
}
