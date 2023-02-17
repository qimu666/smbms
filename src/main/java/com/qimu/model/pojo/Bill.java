package com.qimu.model.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;

@Data
public class Bill {
    private Integer id;
    private String billCode;
    private String productName;
    private String productDesc;
    private String productUnit;
    private Double productCount;
    private Double totalPrice;
    private Integer isPayment;
    private Integer createdBy;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Timestamp creationDate;
    private Integer modifyBy;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Timestamp modifyDate;
    private Integer providerId;

    private String  providerName;

    public Bill() {
    }

    public Bill(Integer id, String billCode, String productName, String productDesc, String productUnit, Double productCount, Double totalPrice, Integer isPayment, Integer createdBy, Timestamp creationDate, Integer modifyBy, Timestamp modifyDate, Integer providerId) {
        this.id = id;
        this.billCode = billCode;
        this.productName = productName;
        this.productDesc = productDesc;
        this.productUnit = productUnit;
        this.productCount = productCount;
        this.totalPrice = totalPrice;
        this.isPayment = isPayment;
        this.createdBy = createdBy;
        this.creationDate = creationDate;
        this.modifyBy = modifyBy;
        this.modifyDate = modifyDate;
        this.providerId = providerId;
    }

}
