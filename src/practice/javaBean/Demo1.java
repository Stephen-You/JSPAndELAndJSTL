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
		//��ȡPersonʵ��
		Person person = new Person();
		//��ȡPerson���͵�BeanInfoʵ��
		try {
			BeanInfo beanInfo = Introspector.getBeanInfo(Person.class);
			//��ȡPerson���͵�����JavaBean���Ե���������������
			PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
			//����JavaBean����������������
			for (PropertyDescriptor propertyDescriptor : propertyDescriptors) {
				//��ȡJavaBean��������
				String name = propertyDescriptor.getName();
				//��ȡmap��ֵ
				String value = map.get(name);
				//�ж�value��Ϊnull,
				if(value != null){
					//��ȡд����
					Method writeMethod = propertyDescriptor.getWriteMethod();
					//���÷���,д�����
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
		//����JavaBean����
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
		//��map����,���뵽JavaBean��
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
