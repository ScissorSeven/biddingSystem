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


import com.dao.ZhaobiaorenDao;
import com.entity.ZhaobiaorenEntity;
import com.service.ZhaobiaorenService;
import com.entity.vo.ZhaobiaorenVO;
import com.entity.view.ZhaobiaorenView;

@Service("zhaobiaorenService")
public class ZhaobiaorenServiceImpl extends ServiceImpl<ZhaobiaorenDao, ZhaobiaorenEntity> implements ZhaobiaorenService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhaobiaorenEntity> page = this.selectPage(
                new Query<ZhaobiaorenEntity>(params).getPage(),
                new EntityWrapper<ZhaobiaorenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhaobiaorenEntity> wrapper) {
		  Page<ZhaobiaorenView> page =new Query<ZhaobiaorenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhaobiaorenVO> selectListVO(Wrapper<ZhaobiaorenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhaobiaorenVO selectVO(Wrapper<ZhaobiaorenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhaobiaorenView> selectListView(Wrapper<ZhaobiaorenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhaobiaorenView selectView(Wrapper<ZhaobiaorenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
