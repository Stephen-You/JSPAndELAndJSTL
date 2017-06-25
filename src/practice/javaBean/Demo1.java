package practice.javaBean;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;



public class Demo1 {
	@Test
	public void mapTest(){
		Map<String, String> map = new HashMap<String,String>();
		map.put("username", "27");
		map.put("sex", "man");
		//获取Person实例
		Person person = new Person();
		//获取Person类型的BeanInfo实例
		try {
			BeanInfo beanInfo = Introspector.getBeanInfo(Person.class);
			//获取Person类型的所有JavaBean属性的属性描述符对象
			PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
			//遍历JavaBean的属性描述符对象
			for (PropertyDescriptor propertyDescriptor : propertyDescriptors) {
				//获取JavaBean的属性名
				String name = propertyDescriptor.getName();
				//获取map的值
				String value = map.get(name);
				//判断value不为null,
				if(value != null){
					//获取写方法
					Method writeMethod = propertyDescriptor.getWriteMethod();
					//调用方法,写入参数
					writeMethod.invoke(person, value);
				}
			}
		} catch (IntrospectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(person);
	}
	
	@Test
	public void test(){
		Person person = new Person();
		//设置JavaBean属性
		try {
			BeanUtils.setProperty(person, "username", "27");
			BeanUtils.setProperty(person, "sex", "man");
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(Person.class);
		System.out.println(Person.class.getName());
		System.out.println(Person.class.equals(new Person()));
		System.out.println(person);
	}
	@Test
	public void test1(){
		Map<String, String> map = new HashMap<String,String>();
		map.put("username", "27");
		map.put("sex", "man");
		//把map属性,放入到JavaBean中
		Person person = new Person();
		try {
			BeanUtils.populate(person, map);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(person);
	}
}
