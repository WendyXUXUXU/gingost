package cn.gingost;



import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;


import cn.gingost.pojo.User;

@SpringBootTest
public class TestDemo {


	@Test
	public void testCheckReg() {
		User u=new User();
		u.setId(1);
		System.out.println(u==null);
		}
}
