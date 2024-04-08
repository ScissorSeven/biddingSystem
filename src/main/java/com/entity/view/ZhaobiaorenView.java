package com.entity.view;

import com.entity.ZhaobiaorenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 招标人
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
@TableName("zhaobiaoren")
public class ZhaobiaorenView  extends ZhaobiaorenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhaobiaorenView(){
	}
 
 	public ZhaobiaorenView(ZhaobiaorenEntity zhaobiaorenEntity){
 	try {
			BeanUtils.copyProperties(this, zhaobiaorenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
