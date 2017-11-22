package org.seckill.dao;

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
    int insertSuccessKilled(long seckillId, long userPhone);

    /**
     * 根据id查询SuccessKilled并携带秒杀产品对象
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId);
}
