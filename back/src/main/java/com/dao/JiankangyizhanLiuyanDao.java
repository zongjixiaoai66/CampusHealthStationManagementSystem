package com.dao;

import com.entity.JiankangyizhanLiuyanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.JiankangyizhanLiuyanView;

/**
 * 驿站留言 Dao 接口
 *
 * @author 
 */
public interface JiankangyizhanLiuyanDao extends BaseMapper<JiankangyizhanLiuyanEntity> {

   List<JiankangyizhanLiuyanView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
