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

/**获取表单参数,封装到JavaBean中
 * @author Yorick
 */
@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
//		//获取所有参数封装到map中
//		Map<String, String[]> map = request.getParameterMap();
//		Person person = new Person();
//		//把map传给bean
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
		//简单操作
		Person person = CommonUtils.toBean(request.getParameterMap(), Person.class);
		System.out.println(person);
	}
	

}
