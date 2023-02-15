import userListPath from "../config/config.js"
import {_ajax as ajax, _fetch as fetch, fetchResponse} from "../interceptor/Request.js";
import {cancleBtn, changeDLGContent} from "../js/userlist.js";


let id = null
let userCode = null
let userPassword = null
let address = null
let phone = null
let userName = null
let userRole = null
let birthday = null
let gender = null
let pageIndex = null;

function init() {
    id = $("#id").val()
    userCode = $("#userCode").val()
    userPassword = $("#userPassword").val()
    address = $("#address").val()
    phone = $("#phone").val()
    userName = $("#userName").val()
    userRole = $("#userRole").val()
    birthday = $("#birthday").val()
    gender = $("#gender").val()
    pageIndex = $("#pageIndex").val()
}

/** 登录接口 **/
export async function login() {
    init()
    const data = {
        "userCode": userCode,
        "userPassword": userPassword,
    }
    await fetch('/user/login.do', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    }).then(fetchResponse)
        .then(res => {
            const {code, description} = res;
            if (code === 0) {
                location.href = userListPath
            } else {
                alert(description)
            }
        })
}

/** 修改添加接口 **/
export function save() {
    init()
    if (confirm("是否确认提交数据")) {
        async function userUpdate() {
            const data = {
                "id": id,
                "userCode": userCode,
                "userName": userName,
                "userPassword": userPassword,
                "address": address,
                "gender": gender,
                "phone": phone,
                "birthday": birthday,
                "userRole": userRole,
            }
            await fetch(path + '/user/user.do', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(data)
            }).then(fetchResponse)
                .then(res => {
                    const {code, description} = res;
                    if (code === 0) {
                        location.href = userListPath
                    } else {
                        alert(description)
                    }
                })
        }

        userUpdate()
    }
}


/** 角色列表查询 **/
export function roleList() {
    userRole = $("#userRole");
    userRole.next().html("*");

    ajax({
        type: "GET",//请求类型
        url: "/user/user_role_list",//请求的url
        dataType: "json",//ajax接口（请求url）返回的数据类型
    }).done(function (data) {
        if (data && data.code === 0) {
            data = data.data
            userRole.html("");
            let rid = $("#rid").val()
            let options = null;
            rid = ridDealWith(rid)
            if (rid !== null) {
                if (rid !== 0) {
                    options = forRole(data, rid, options)
                    options += "<option value=\"0\">-- 请选择 --</option>";
                }
                if (rid === 0) {
                    options = "<option value=\"0\">-- 请选择 --</option>";
                    options = forRole(data, rid, options)
                }

            }
            userRole.html(options);
        }
    }).fail(function (data) {//当访问时候，404，500 等非200的错误状态码
        validateTip(userRole.next(), {"color": "red"}, imgNo + " 获取用户角色列表error", false);
    })
}

function forRole(data, rid, options) {
    for (let i = 0; i < data.length; i++) {
        options += "<option "
        if (rid === data[i].id) {
            options += "selected = 'selected'"
        }
        options += " value =" + data[i].id + ">" + data[i].roleName + "</option>"
    }
    return options
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

/** 删除用户 **/
export function userDelete(obj) {
    $.ajax({
        type: "DELETE",
        url: `/user/delete_user/` + obj.attr("userid"),
        // data: {"_method":"DELETE"},
        dataType: "json",
        success: function (data) {
            if (data.code === 0) {//删除成功：移除删除行
                cancleBtn();
                obj.parents("tr").remove();
            } else if (data.code === 40002) {//删除失败
                //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                changeDLGContent("对不起，删除用户【" + obj.attr("username") + "】失败");
            } else if (data.code === 40102) {
                //alert("对不起，用户【"+obj.attr("username")+"】不存在");
                changeDLGContent("对不起，用户【" + obj.attr("username") + "】不存在");
            }
        },
        error: function (data) {
            //alert("对不起，删除失败");
            changeDLGContent("对不起，删除失败");
        }
    })
}

export function getUserCode(userCode) {
    $.ajax({
        type: "GET",//请求类型
        url: "/user/user_code",//请求的url
        data: {userCode: userCode.val()},//请求参数
        dataType: "json",//ajax接口（请求url）返回的数据类型
        success: function (data) {//data：返回数据（json对象）
            if (data.code === 0) {
                validateTip(userCode.next(), {"color": "green"}, imgYes + "该账号可以注册", true);
            }
            if (data.code === 40102) {//账号已存在，错误提示
                validateTip(userCode.next(), {"color": "red"}, imgNo + "用户名已在,不可以注册", false);
            }
            if (data.code === 40000) {//
                validateTip(userCode.next(), {"color": "red"}, imgNo + "用户编码为空", false);
            }
        },
        error: function (data) {//当访问时候，404，500 等非200的错误状态码
            validateTip(userCode.next(), {"color": "red"}, imgNo + " 您访问的页面不存在", false);
        }
    })
}

export function userView(uid) {
    $.ajax({
        type: "GET",
        url: `/user/userView/${uid}`,
        dataType: "json",
        success: function (data) {
            if (data.code === 0) {
                document.cookie = "data=" + JSON.stringify(data)
            }
        }
    })
}
