package practice.javaBean;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.itcast.commons.CommonUtils;

/**��ȡ������,��װ��JavaBean��
 * @author Yorick
 */
@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
//		//��ȡ���в�����װ��map��
//		Map<String, String[]> map = request.getParameterMap();
//		Person person = new Person();
//		//��map����bean
//		try {
//			BeanUtils.populate(person, map);
//		} catch (IllegalAccessException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (InvocationTargetException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(person);
		//�򵥲���
		Person person = CommonUtils.toBean(request.getParameterMap(), Person.class);
		System.out.println(person);
	}
	

}
