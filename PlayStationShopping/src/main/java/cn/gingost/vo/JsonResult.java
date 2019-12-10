package cn.gingost.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class JsonResult implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5858122921682190913L;
	private int statu = 1;// 状态码
	private String msg = "successful";
	private Object object;

	public JsonResult(Object object) {
		super();
		this.object = object;
	}

	public JsonResult(Throwable e) {
		super();
		this.statu = 0;
		this.msg = e.getMessage();
	}

	public JsonResult(String msg) {
		super();
		this.msg = msg;
	}
}
