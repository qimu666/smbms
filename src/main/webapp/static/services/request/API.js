import {config, localhost} from "../../config/config.js";

const NO_NEED_LOGIN_WHITE_LIST = ["/login", "/login.to", "/user/logout.do"];

const request = axios.create(config);

request.interceptors.request.use(
    (config) => {
        // 处理请求前的逻辑
        return config;
    },
    (error) => {
        // 处理请求前发生的错误
        return Promise.reject(error);
    }
);

request.interceptors.response.use(
    (response) => {
        // 处理请求成功的逻辑
        if (response.data.code === 40100) {
            if (!NO_NEED_LOGIN_WHITE_LIST.includes(location.pathname)) {
                alert(response.data.message)
                location.href = localhost + "/login"
            }
        }
        return response.data;
    },
    (error) => {
        // 处理请求失败的逻辑
        return Promise.reject(error);
    }
);

export async function current() {
    request.post('/user/current',{})
}

export default request;