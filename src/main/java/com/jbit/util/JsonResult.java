package com.jbit.util;

import java.io.Serializable;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonResult implements Serializable {
	 /**
    *
    */
   private static final long serialVersionUID = 1L;

   // 定义jackson对象
   private static final ObjectMapper MAPPER = new ObjectMapper();

   // 返回标记，成功标记为0，失败为1
   private Integer code;

   // 返回消息
   private String msg;

   // 返回中的数据
   private Object data;

   /**
    * 1、成功返回调用的方法
    *
    * @param data
    * @return
    */
   public static JsonResult success(Object data) {
       return new JsonResult(data);
   }

   /**
    * 2、成功返回调用的方法，重载方法
    *
    * @return
    */
   public static JsonResult success() {
	   return new JsonResult(0,"请求成功",null);
   }
   
   public static JsonResult error() {
       return new JsonResult(1,"请求失败",null);
   }


   /**
    * 3、传入封装的数据，返回标记和返回信息进行默认
    *
    * @param data
    */
   public JsonResult(Object data) {
       this.code = 0;
       this.msg = "success";
       this.data = data;
   }

   /**
    * 4、无参的构造方法
    */
   public JsonResult() {

   }

   /**
    * 5、自己构建一个方法，调用构造方法，返回自己封装的状态，返回信息，和封装的数据信息
    *
    * @param code
    * @param msg
    * @param data
    * @return
    */
   public static JsonResult build(Integer code, String msg, Object data) {
       return new JsonResult(code, msg, data);
   }

   /**
    * 6、自己构建一个方法，重载，调用构造方法，默认封装的数据信息为null
    *
    * @param code
    * @param msg
    * @return
    */
   public static JsonResult build(Integer code, String msg) {
       return new JsonResult(code, msg, null);
   }

   /**
    * 7、可以传入封装的数据，和封装的信息，失败或者成功
    *
    * @param data
    * @param msg
    */
   public JsonResult(Object data, String msg) {
       this.code = 0;
       this.msg = msg;
       this.data = data;
   }


   /**
    * 8、含参的构造方法
    *
    * @param code
    * @param msg
    * @param data
    */
   public JsonResult(Integer code, String msg, Object data) {
       this.code = code;
       this.msg = msg;
       this.data = data;
   }

   public Integer getCode() {
       return code;
   }

   public void setCode(Integer code) {
       this.code = code;
   }

   public String getMsg() {
       return msg;
   }

   public void setMsg(String msg) {
       this.msg = msg;
   }

   public Object getData() {
       return data;
   }

   public void setData(Object data) {
       this.data = data;
   }


   /**
    * 将json结果集转化为JsonResult对象
    *
    * @param jsonData json数据
    * @param clazz    JsonResult中的object类型
    * @return
    */
   public static JsonResult formatToPojo(String jsonData, Class<?> clazz) {
       try {
           if (clazz == null) {
               return MAPPER.readValue(jsonData, JsonResult.class);
           }
           JsonNode jsonNode = MAPPER.readTree(jsonData);
           JsonNode data = jsonNode.get("data");
           Object obj = null;
           if (clazz != null) {
               if (data.isObject()) {
                   obj = MAPPER.readValue(data.traverse(), clazz);
               } else if (data.isTextual()) {
                   obj = MAPPER.readValue(data.asText(), clazz);
               }
           }
           return build(jsonNode.get("code").intValue(), jsonNode.get("msg").asText(), obj);
       } catch (Exception e) {
           return null;
       }
   }

   /**
    * 没有object对象的转化
    *
    * @param json
    * @return
    */
   public static JsonResult format(String json) {
       try {
           return MAPPER.readValue(json, JsonResult.class);
       } catch (Exception e) {
           e.printStackTrace();
       }
       return null;
   }


}
