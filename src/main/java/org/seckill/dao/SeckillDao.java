package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by muzi on 2017/11/23.
 */
public interface SeckillDao {


    /**
     * 减库存
     * @param seckillId
     * @param killTime
     * @return
     */
    int reduceNumber(@Param(value = "seckillId") long seckillId, @Param(value = "killTime") Date killTime);

    /**
     * 按id查询
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * 根据偏移量查询列表
     * @param offset
     * @param limit
     * @return
     */
    //@Param声明  java没有保存形参的记录 queryAll（int offset, int limit） -> queryAll(arg0, arg1)
    List<Seckill> queryAll(@Param(value = "offset") int offset, @Param(value = "limit") int limit);
}
