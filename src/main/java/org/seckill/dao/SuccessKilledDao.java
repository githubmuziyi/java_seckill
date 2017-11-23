package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.SuccessKilled;

/**
 * Created by muzi on 2017/11/23.
 */
public interface SuccessKilledDao {

    /**
     * 插入记录
     * @param seckillId
     * @param userPhone
     * @return
     */
    int insertSuccessKilled(@Param(value = "seckillId") long seckillId, @Param(value = "userPhone") long userPhone);

    /**
     * 根据id查询SuccessKilled并携带秒杀产品对象
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(@Param(value = "seckillId") long seckillId, @Param(value = "userPhone") long userPhone);
}
