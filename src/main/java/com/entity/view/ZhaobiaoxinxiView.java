package com.entity.view;

import com.entity.ZhaobiaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 招标信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
@TableName("zhaobiaoxinxi")
public class ZhaobiaoxinxiView  extends ZhaobiaoxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhaobiaoxinxiView(){
	}
 
 	public ZhaobiaoxinxiView(ZhaobiaoxinxiEntity zhaobiaoxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, zhaobiaoxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
