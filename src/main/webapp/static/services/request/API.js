import {config, localhost} from "../../config/config.js";

const NO_NEED_LOGIN_WHITE_LIST = ["/login", "/login.to", "/user/logout.do"];

const _axios = axios.create(config)

export async function get(url, params) {
    const response = await _axios.get(url, {params});
    return response.data;
}

_axios.interceptors.response.use(
    function (response) {
        if (response.data.code === 40100) {
            if (!NO_NEED_LOGIN_WHITE_LIST.includes(location.pathname)) {
                alert(response.data.message)
                location.href = localhost + "/login"
            }
        }
        return response;
    },
    function (error) {
        // 超出 2xx, 比如 4xx, 5xx 走这里
        return Promise.reject(error);
    }
);

