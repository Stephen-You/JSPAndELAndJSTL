import java.util.UUID;

import org.junit.Test;

import cn.itcast.commons.CommonUtils;


public class Demo {
	@Test
	public void test1(){
		//创建随机UUID实例
		UUID uuid = UUID.randomUUID();
		String str1 = uuid.toString();
		System.out.println(str1);
		str1 = str1.replace("-", "");
		System.out.println(str1);
		System.out.println(str1.toUpperCase());
	}
	@Test
	public void test2(){
		System.out.println(CommonUtils.uuid());
	}
	
}
