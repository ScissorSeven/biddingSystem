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


import com.dao.ToubiaorenDao;
import com.entity.ToubiaorenEntity;
import com.service.ToubiaorenService;
import com.entity.vo.ToubiaorenVO;
import com.entity.view.ToubiaorenView;

@Service("toubiaorenService")
public class ToubiaorenServiceImpl extends ServiceImpl<ToubiaorenDao, ToubiaorenEntity> implements ToubiaorenService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ToubiaorenEntity> page = this.selectPage(
                new Query<ToubiaorenEntity>(params).getPage(),
                new EntityWrapper<ToubiaorenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ToubiaorenEntity> wrapper) {
		  Page<ToubiaorenView> page =new Query<ToubiaorenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ToubiaorenVO> selectListVO(Wrapper<ToubiaorenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ToubiaorenVO selectVO(Wrapper<ToubiaorenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ToubiaorenView> selectListView(Wrapper<ToubiaorenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ToubiaorenView selectView(Wrapper<ToubiaorenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
