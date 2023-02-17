import {localhost} from "../../config/config.js";
import {get} from "../request/API.js";

const NO_NEED_LOGIN_WHITE_LIST = ["/login", "/login.to", "/user/logout.do"];

export function _ajax(options) {
    // getCurrent()
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
    // getCurrent()
    current()
    const data = response.json();
    if (!NO_NEED_LOGIN_WHITE_LIST.includes(location.pathname)) {
        location.href = localhost + "/error"
    }
    return data;
}


export function ajaxResponse(response) {
    current()
    if (!response) {
        location.href = localhost + "/error"
    }
    return response;
}

// export async function current() {
//     return await fetch('/user/current').then(date => date.json())
// }
//
// function getCurrent() {
//     current().then(res => {
//         const data = res;
//         if (data.code === 40100) {
//             if (!NO_NEED_LOGIN_WHITE_LIST.includes(location.pathname)) {
//                 alert(data.message)
//                 location.href = localhost + "/login"
//             }
//         }
//     })
// }


export async function current() {
    await get('/user/current')
}