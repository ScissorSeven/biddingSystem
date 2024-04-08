package com.entity.vo;

import com.entity.ToubiaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 投标信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public class ToubiaoxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 项目名称
	 */
	
	private String xiangmumingcheng;
		
	/**
	 * 招标账号
	 */
	
	private String zhaobiaozhanghao;
		
	/**
	 * 公司名称
	 */
	
	private String gongsimingcheng;
		
	/**
	 * 投标文件
	 */
	
	private String toubiaowenjian;
		
	/**
	 * 投标内容
	 */
	
	private String toubiaoneirong;
		
	/**
	 * 投标日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date toubiaoriqi;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 手机
	 */
	
	private String shouji;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：项目名称
	 */
	 
	public void setXiangmumingcheng(String xiangmumingcheng) {
		this.xiangmumingcheng = xiangmumingcheng;
	}
	
	/**
	 * 获取：项目名称
	 */
	public String getXiangmumingcheng() {
		return xiangmumingcheng;
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
	 * 设置：投标文件
	 */
	 
	public void setToubiaowenjian(String toubiaowenjian) {
		this.toubiaowenjian = toubiaowenjian;
	}
	
	/**
	 * 获取：投标文件
	 */
	public String getToubiaowenjian() {
		return toubiaowenjian;
	}
				
	
	/**
	 * 设置：投标内容
	 */
	 
	public void setToubiaoneirong(String toubiaoneirong) {
		this.toubiaoneirong = toubiaoneirong;
	}
	
	/**
	 * 获取：投标内容
	 */
	public String getToubiaoneirong() {
		return toubiaoneirong;
	}
				
	
	/**
	 * 设置：投标日期
	 */
	 
	public void setToubiaoriqi(Date toubiaoriqi) {
		this.toubiaoriqi = toubiaoriqi;
	}
	
	/**
	 * 获取：投标日期
	 */
	public Date getToubiaoriqi() {
		return toubiaoriqi;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：手机
	 */
	 
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
