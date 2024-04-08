package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ToubiaoxinxiDao;
import com.entity.ToubiaoxinxiEntity;
import com.service.ToubiaoxinxiService;
import com.entity.vo.ToubiaoxinxiVO;
import com.entity.view.ToubiaoxinxiView;

@Service("toubiaoxinxiService")
public class ToubiaoxinxiServiceImpl extends ServiceImpl<ToubiaoxinxiDao, ToubiaoxinxiEntity> implements ToubiaoxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ToubiaoxinxiEntity> page = this.selectPage(
                new Query<ToubiaoxinxiEntity>(params).getPage(),
                new EntityWrapper<ToubiaoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ToubiaoxinxiEntity> wrapper) {
		  Page<ToubiaoxinxiView> page =new Query<ToubiaoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ToubiaoxinxiVO> selectListVO(Wrapper<ToubiaoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ToubiaoxinxiVO selectVO(Wrapper<ToubiaoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ToubiaoxinxiView> selectListView(Wrapper<ToubiaoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ToubiaoxinxiView selectView(Wrapper<ToubiaoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
