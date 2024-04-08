package com.entity.view;

import com.entity.PingbiaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 评标信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
@TableName("pingbiaoxinxi")
public class PingbiaoxinxiView  extends PingbiaoxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PingbiaoxinxiView(){
	}
 
 	public PingbiaoxinxiView(PingbiaoxinxiEntity pingbiaoxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, pingbiaoxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
