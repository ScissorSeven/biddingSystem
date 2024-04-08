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


import com.dao.PingbiaoxinxiDao;
import com.entity.PingbiaoxinxiEntity;
import com.service.PingbiaoxinxiService;
import com.entity.vo.PingbiaoxinxiVO;
import com.entity.view.PingbiaoxinxiView;

@Service("pingbiaoxinxiService")
public class PingbiaoxinxiServiceImpl extends ServiceImpl<PingbiaoxinxiDao, PingbiaoxinxiEntity> implements PingbiaoxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PingbiaoxinxiEntity> page = this.selectPage(
                new Query<PingbiaoxinxiEntity>(params).getPage(),
                new EntityWrapper<PingbiaoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PingbiaoxinxiEntity> wrapper) {
		  Page<PingbiaoxinxiView> page =new Query<PingbiaoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PingbiaoxinxiVO> selectListVO(Wrapper<PingbiaoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PingbiaoxinxiVO selectVO(Wrapper<PingbiaoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PingbiaoxinxiView> selectListView(Wrapper<PingbiaoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PingbiaoxinxiView selectView(Wrapper<PingbiaoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
