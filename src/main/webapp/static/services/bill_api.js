import {_ajax as ajax} from "../interceptor/Request.js";
/** 角色列表查询 **/
export function providerList() {
    let providerId = $("#providerId");
    providerId.next().html("*");
    ajax({
        type: "GET",//请求类型
        url: "/provider/providers_list",//请求的url
        dataType: "json",//ajax接口（请求url）返回的数据类型
    }).done(function (data) {
        if (data && data.code === 0) {
            data = data.data
            providerId.html("");
            let rid = $("#pid").val()
            let options = null;
            rid = ridDealWith(rid)
            if (rid !== null) {
                if (rid !== 0) {
                    options = select(data, rid, options)
                    options += "<option value=\"0\">-- 请选择 --</option>";
                }
                if (rid === 0) {
                    options = "<option value=\"0\">-- 请选择 --</option>";
                    options = select(data, rid, options)
                }
            }
            providerId.html(options);
        }
    }).fail(function (data) {//当访问时候，404，500 等非200的错误状态码
        validateTip(providerId.next(), {"color": "red"}, imgNo + " 获取用户角色列表error", false);
    })
}


function ridDealWith(rid) {
    if (rid === "") {
        rid = 0
    } else {
        rid = parseInt(rid)
    }
    if (rid !== rid) {
        rid = 0;
    }
    return rid
}

// export function isPayment() {
//     let isPayment = $("#isPayment");
//     isPayment.next().html("*");
//     ajax({
//         type: "GET",//请求类型
//         url: "/provider/is_payment",//请求的url
//         dataType: "json",//ajax接口（请求url）返回的数据类型
//     }).done(function (data) {
//         if (data && data.code === 0) {
//             data = data.data
//             providerId.html("");
//             let rid = $("#payId").val()
//             let options = null;
//             rid = ridDealWith(rid)
//             if (rid !== null) {
//                 if (rid !== 0) {
//                     options = select(data, rid, options)
//                     options += "<option value=\"0\">-- 请选择 --</option>";
//                 }
//                 if (rid === 0) {
//                     options = "<option value=\"0\">-- 请选择 --</option>";
//                     options = select(data, rid, options)
//                 }
//             }
//             providerId.html(options);
//         }
//     }).fail(function (data) {//当访问时候，404，500 等非200的错误状态码
//         validateTip(providerId.next(), {"color": "red"}, imgNo + " 获取用户角色列表error", false);
//     })
//
// }

function select(data, rid, options) {
    for (let i = 0; i < data.length; i++) {
        options += "<option "
        if (rid === data[i].id) {
            options += "selected = 'selected'"
        }
        options += " value =" + data[i].id + ">" + data[i].proName + "</option>"
    }
    return options
}
