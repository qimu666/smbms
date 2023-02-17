import {login} from "../services/api/user_api.js";

$("#login").on("click", function () {
    login()
    return false
})
