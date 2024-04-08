package com.entity.model;

import com.entity.ZhaobiaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 招标信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public class ZhaobiaoxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 公司名称
	 */
	
	private String gongsimingcheng;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 附件
	 */
	
	private String fujian;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 招标要求
	 */
	
	private String zhaobiaoyaoqiu;
		
	/**
	 * 招标内容
	 */
	
	private String zhaobiaoneirong;
		
	/**
	 * 招标账号
	 */
	
	private String zhaobiaozhanghao;
				
	
	/**
	 * 设置：公司名称
	 */
	 
	public void setGongsimingcheng(String gongsimingcheng) {
		this.gongsimingcheng = gongsimingcheng;
	}
	
	/**
	 * 获取：公司名称
	 */
	public String getGongsimingcheng() {
		return gongsimingcheng;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：附件
	 */
	 
	public void setFujian(String fujian) {
		this.fujian = fujian;
	}
	
	/**
	 * 获取：附件
	 */
	public String getFujian() {
		return fujian;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
				
	
	/**
	 * 设置：招标要求
	 */
	 
	public void setZhaobiaoyaoqiu(String zhaobiaoyaoqiu) {
		this.zhaobiaoyaoqiu = zhaobiaoyaoqiu;
	}
	
	/**
	 * 获取：招标要求
	 */
	public String getZhaobiaoyaoqiu() {
		return zhaobiaoyaoqiu;
	}
				
	
	/**
	 * 设置：招标内容
	 */
	 
	public void setZhaobiaoneirong(String zhaobiaoneirong) {
		this.zhaobiaoneirong = zhaobiaoneirong;
	}
	
	/**
	 * 获取：招标内容
	 */
	public String getZhaobiaoneirong() {
		return zhaobiaoneirong;
	}
				
	
	/**
	 * 设置：招标账号
	 */
	 
	public void setZhaobiaozhanghao(String zhaobiaozhanghao) {
		this.zhaobiaozhanghao = zhaobiaozhanghao;
	}
	
	/**
	 * 获取：招标账号
	 */
	public String getZhaobiaozhanghao() {
		return zhaobiaozhanghao;
	}
			
}
