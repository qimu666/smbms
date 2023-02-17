const searchPath = "/user/search"
const index = "/home"
const Suffix = "/api"
const localhost = "http://localhost:8088"

const pre = undefined

const prefix = pre ? pre : localhost
const userListPath = localhost + searchPath;
const indexPath = localhost + index;

export {searchPath, localhost, indexPath}
export const config = {
    baseURL: localhost
}

export default userListPath