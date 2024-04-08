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


import com.dao.PingbiaorenDao;
import com.entity.PingbiaorenEntity;
import com.service.PingbiaorenService;
import com.entity.vo.PingbiaorenVO;
import com.entity.view.PingbiaorenView;

@Service("pingbiaorenService")
public class PingbiaorenServiceImpl extends ServiceImpl<PingbiaorenDao, PingbiaorenEntity> implements PingbiaorenService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PingbiaorenEntity> page = this.selectPage(
                new Query<PingbiaorenEntity>(params).getPage(),
                new EntityWrapper<PingbiaorenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PingbiaorenEntity> wrapper) {
		  Page<PingbiaorenView> page =new Query<PingbiaorenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PingbiaorenVO> selectListVO(Wrapper<PingbiaorenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PingbiaorenVO selectVO(Wrapper<PingbiaorenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PingbiaorenView> selectListView(Wrapper<PingbiaorenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PingbiaorenView selectView(Wrapper<PingbiaorenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
