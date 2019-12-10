package cn.gingost.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.gingost.pojo.User;

@Mapper
public interface UserDao {
	// 登录验证
	@Select("select * from user where username=#{username} and userpwd=#{userpwd}")

	public User findOne(@Param("username") String username, @Param("userpwd") String userpwd);

	// 验证注册重名
	@Select("select id from user where username=#{username}")
	public User checkRegName(@Param("username") String username);

	// 验证注册重邮箱
	@Select("select id from user where useremail=#{useremail}")
	public User checkRegEmail(@Param("useremail") String useremail);

	// 验证注册重手机号
	@Select("select id from user where userphone=#{userphone}")
	public User checkRegPhone(@Param("userphone") Long userphone);

	// 注册
	public int addOne(User user);

	// 重置密码用户名验证
	@Select("select * from user where username=#{username}")
	public User resetPwd(String username);
	//重置用户密码
	@Update("update user set userpwd=#{userpwd} where id=#{id}")
	public int changePwd(@Param("userpwd") String userpwd, @Param("id") Integer id);
}
