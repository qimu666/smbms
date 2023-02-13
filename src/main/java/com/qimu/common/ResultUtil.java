package com.qimu.common;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: QiMu
 * @Date: 2023年02月13日 14:47
 * @Version:1.0
 * @Description:
 */
@Data
public class ResultUtil implements Serializable {
    public static <T> BaseResponse<T> success(int code, T data, String message, String description) {
        return new BaseResponse<T>(code, data, message, "");
    }

    public static <T> BaseResponse<T> success(int code) {
        return new BaseResponse<T>(code, null, "", "");
    }

    public static <T> BaseResponse<T> success(int code, String message) {
        return new BaseResponse<T>(code, null, message, "");
    }

    public static <T> BaseResponse<T> error(int code, String message) {
        return new BaseResponse<T>(code, null, message, "");
    }
}
