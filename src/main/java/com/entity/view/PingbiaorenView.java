package com.entity.view;

import com.entity.PingbiaorenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 评标人
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
@TableName("pingbiaoren")
public class PingbiaorenView  extends PingbiaorenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PingbiaorenView(){
	}
 
 	public PingbiaorenView(PingbiaorenEntity pingbiaorenEntity){
 	try {
			BeanUtils.copyProperties(this, pingbiaorenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
