import {localhost} from "../../config/config.js";

const NO_NEED_LOGIN_WHITE_LIST = ["/login", "/login.to", "/user/logout.do"];

export function _ajax(options) {
    let url = options.url
    options.url = localhost + url
    return $.ajax(options);
}

// 定义请求拦截器
export function _fetch(url, options) {
    // getCurrent()
    return fetch(url, options);
}

// 定义响应拦截器
export function fetchResponse(response) {// 修改响应内容
    current()
    const data = response.json();
    if (!NO_NEED_LOGIN_WHITE_LIST.includes(location.pathname)) {
        location.href = localhost + "/error"
    }
    return data;
}


export function ajaxResponse(response) {
    if (!response) {
        location.href = localhost + "/error"
    }
    return response;
}
