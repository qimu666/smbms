package com.qimu.model.request;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: QiMu
 * @Date: 2023年02月13日 14:27
 * @Version:1.0
 * @Description:
 */
@Data
public class UserRequest implements Serializable {
    private String result;

    public UserRequest(String result) {
        this.result = result;
    }
}
