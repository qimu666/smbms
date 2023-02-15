import {login} from "../services/user_api.js";

$("#login").on("click", function () {
    login()
    return false
})