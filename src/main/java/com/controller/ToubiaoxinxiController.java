package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ToubiaoxinxiEntity;
import com.entity.view.ToubiaoxinxiView;

import com.service.ToubiaoxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 投标信息
 * 后端接口
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
@RestController
@RequestMapping("/toubiaoxinxi")
public class ToubiaoxinxiController {
    @Autowired
    private ToubiaoxinxiService toubiaoxinxiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ToubiaoxinxiEntity toubiaoxinxi,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("zhaobiaoren")) {
			toubiaoxinxi.setZhaobiaozhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("toubiaoren")) {
			toubiaoxinxi.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ToubiaoxinxiEntity> ew = new EntityWrapper<ToubiaoxinxiEntity>();
		PageUtils page = toubiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, toubiaoxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ToubiaoxinxiEntity toubiaoxinxi, 
		HttpServletRequest request){
        EntityWrapper<ToubiaoxinxiEntity> ew = new EntityWrapper<ToubiaoxinxiEntity>();
		PageUtils page = toubiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, toubiaoxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ToubiaoxinxiEntity toubiaoxinxi){
       	EntityWrapper<ToubiaoxinxiEntity> ew = new EntityWrapper<ToubiaoxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( toubiaoxinxi, "toubiaoxinxi")); 
        return R.ok().put("data", toubiaoxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ToubiaoxinxiEntity toubiaoxinxi){
        EntityWrapper< ToubiaoxinxiEntity> ew = new EntityWrapper< ToubiaoxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( toubiaoxinxi, "toubiaoxinxi")); 
		ToubiaoxinxiView toubiaoxinxiView =  toubiaoxinxiService.selectView(ew);
		return R.ok("查询投标信息成功").put("data", toubiaoxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ToubiaoxinxiEntity toubiaoxinxi = toubiaoxinxiService.selectById(id);
        return R.ok().put("data", toubiaoxinxi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ToubiaoxinxiEntity toubiaoxinxi = toubiaoxinxiService.selectById(id);
        return R.ok().put("data", toubiaoxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ToubiaoxinxiEntity toubiaoxinxi, HttpServletRequest request){
    	toubiaoxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(toubiaoxinxi);
        toubiaoxinxiService.insert(toubiaoxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ToubiaoxinxiEntity toubiaoxinxi, HttpServletRequest request){
    	toubiaoxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(toubiaoxinxi);
        toubiaoxinxiService.insert(toubiaoxinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ToubiaoxinxiEntity toubiaoxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(toubiaoxinxi);
        toubiaoxinxiService.updateById(toubiaoxinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        toubiaoxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ToubiaoxinxiEntity> wrapper = new EntityWrapper<ToubiaoxinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("zhaobiaoren")) {
			wrapper.eq("zhaobiaozhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("toubiaoren")) {
			wrapper.eq("yonghuming", (String)request.getSession().getAttribute("username"));
		}

		int count = toubiaoxinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
