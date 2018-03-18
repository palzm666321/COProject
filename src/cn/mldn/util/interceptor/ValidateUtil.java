package cn.mldn.util.interceptor;

import java.lang.reflect.Method;
import java.util.Map;

public class ValidateUtil {
	/**
	 * 进行数据验证的操作方法
	 * @param actionObject 表示要触发此操作的Action类
	 * @param rule  每个Action类里面定义的规则
	 * @param params 表示所有的输入参数
	 * @return 验证成功返回true，验证失败返回false
	 */
	public static boolean validate(Object actionObject, String rule,
			Map<String, Object> params) {
		boolean flag = false; // 综合的验证成功与否的标记
		// 取得增加错误信息的操作方法，通过此方法保存错误信息
		try {
			Method addFieldErrorMethod = actionObject.getClass().getMethod(
					"addFieldError", String.class, String.class);
			// 通过此方法取得错误的提示信息
			Method textMethod = actionObject.getClass().getMethod("getText",
					String.class);
			// 所有的验证操作都应该由rule发起，里面的组成“参数名称:类型”
			String result[] = rule.split("\\|"); // 取出每一组验证规则
			String text = null; // 保存每一个的错误提示信息
			for (int x = 0; x < result.length; x++) { // 表示此处循环每一个验证
				String temp[] = result[x].split(":");// 取出参数名称以及验证规则
				String paramValue[] = (String[]) params.get(temp[0]);
				for (int y = 0; y < paramValue.length; y++) { // 循环每一个数组内容
					switch (temp[1]) { // 进行有效的验证
					case "string": {
						flag = ValidateUtil.validateString(paramValue[y]);
						if (!flag) { // 没有验证成功
							text = (String) textMethod.invoke(actionObject,
									"string.validate.error.msg");
						}
						break;
					}
					case "int": {
						flag = ValidateUtil.validateInt(paramValue[y]);
						if (!flag) { // 没有验证成功
							text = (String) textMethod.invoke(actionObject,
									"number.validate.error.msg");
						}
						break;
					}
					case "double": {
						flag = ValidateUtil.validateDouble(paramValue[y]);
						if (!flag) { // 没有验证成功
							text = (String) textMethod.invoke(actionObject,
									"number.validate.error.msg");
						}
						break;
					}
					case "date": {
						flag = ValidateUtil.validateDate(paramValue[y]);
						if (!flag) { // 没有验证成功
							text = (String) textMethod.invoke(actionObject,
									"date.validate.error.msg");
						}
						break;
					}
					}
					if (!flag) { // 验证失败
						addFieldErrorMethod.invoke(actionObject, temp[0], text);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return flag;
	} 

	/**
	 * 进行字符串的操作验证
	 * 
	 * @param str
	 *            要验证的内容
	 * @return 如果字符串为空或者长度为0，那么返回false，否则返回true
	 */
	public static boolean validateString(String str) {
		if (str == null || "".equals(str)) {
			return false;
		}
		return true;
	}

	/**
	 * 进行数字的验证操作，验证之前首先要判断数据是否为空
	 * 
	 * @param str
	 *            要验证的内容
	 * @return 如果是由数字所组成返回true，否则返回false
	 */
	public static boolean validateInt(String str) {
		if (validateString(str)) { // 首先判断数据是否合法
			return str.matches("\\d+");
		}
		return false;
	}

	/**
	 * 进行小数的验证操作，验证之前要先判断数据是否为空
	 * 
	 * @param str
	 *            要验证的内容
	 * @return 如果字符串由小数所组成返回true，否则返回false
	 */
	public static boolean validateDouble(String str) {
		if (validateString(str)) {
			return str.matches("\\d+(\\.\\d+)?");
		}
		return false;
	}

	/**
	 * 验证字符串是否是日期类型或者是日期事件类型
	 * 
	 * @param str
	 *            要验证的内容
	 * @return 如果字符串是日期或者是日期时间，则返回true，否则返回false
	 */
	public static boolean validateDate(String str) {
		if (validateString(str)) {
			if (str.matches("\\d{4}-\\d{2}-\\d{2}")) {
				return true;
			} else { // 有可能是日期时间类型
				return str.matches("\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}");
			}
		}
		return false;
	}
}
