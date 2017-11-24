package org.seckill.exception;

import org.seckill.dto.SeckillExecution;

/**
 * 秒杀被关闭异常
 * Created by muzi on 2017/11/23.
 */
public class SeckillCloseException extends SeckillException {

    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
