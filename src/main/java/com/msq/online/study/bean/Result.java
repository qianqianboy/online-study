package com.msq.online.study.bean;

import java.util.HashMap;
import java.util.Map;

/**
 * 通用的返回json数据的类
 * @author minsiqian
 */
public class Result {

    /**
     * 状态码，100-失败，200-成功
     */
    private int code;

    /**
     * 错误提示信息
     */
    private String message;

    /**
     * 返回到浏览器的结果数据
     */
    private Map<String,Object> data=new HashMap<>();

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }

    public static Result success(){
        Result result = new Result();
        result.setCode(200);
        result.setMessage("处理成功");
        return result;
    }
    public static Result fail(){
        Result result = new Result();
        result.setCode(100);
        result.setMessage("处理失败");
        return result;
    }
    public Result add(String key,Object value){
        this.getData().put(key,value);
        return this;
    }
}
