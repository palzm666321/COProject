package cn.mldn.util.interceptor;

import java.lang.reflect.Field;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class ValidateInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// 取得要操作的Action，根据发送的提交路径的不同，Action对象也不同
		Object actionObject = invocation.getAction();
		// 为了可以确定要使用的验证操作成员，必须从里面取出分发的操作代码
		String uri = ServletActionContext.getRequest().getRequestURI();
		if (uri != null) { // 为了保险起见，可以再增加一个null的验证
			// 取出关键的业务方法的名称，那么就相当于取得了“业务方法名称Rule”的验证规则
			uri = uri.substring(uri.lastIndexOf("!") + 1, uri.lastIndexOf("."));
			// 有了Action对象，又有了名称，就可以取得成员了
			String filedName = uri + "Rule"; // 这个是验证规则的成员
			try {
				// 根据成员名称取得对象的具体内容，那么只能够依靠反射完成
				Field fieldRule = actionObject.getClass().getDeclaredField(
						filedName);
				fieldRule.setAccessible(true);// 取消掉封装处理
				String rule = (String) fieldRule.get(actionObject);
				// 代码验证通过
				if (ValidateUtil.validate(actionObject, rule, invocation
						.getInvocationContext().getParameters())) {
					return invocation.invoke();
				} else { // 跳转到错误页面，应该回到错误页
					return uri + "VF" ;	// 跳转指定的页面
				}
			} catch (Exception e) {
			}
		}
		return invocation.invoke();
	}
}
