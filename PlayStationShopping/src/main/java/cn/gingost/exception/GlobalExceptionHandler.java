package cn.gingost.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.gingost.vo.JsonResult;

@ControllerAdvice
public class GlobalExceptionHandler {
	@ResponseBody
	@ExceptionHandler(RuntimeException.class)
	public JsonResult doExceptionHandler(RuntimeException e) {
		e.printStackTrace();
		return new JsonResult(e);
	}
}
