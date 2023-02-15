import {userView} from "../services/user_api.js";
import {genderEnum, roleEnum} from "./commonEnum.js";

var backBtn = null;
let vid = $("#viewId")
$(function () {

    let urlParams = new URLSearchParams(window.location.search);
    let uid = urlParams.get('uid');
    vid.val(uid)

    userView(uid)

    let cookie = document.cookie
    let data = JSON.parse(cookie.split('=')[1]);
    data = data.data

    let span = document.querySelector(".providerView")
    let wid = span.querySelectorAll(".wid")
    wid[0].innerHTML = data.userCode;
    wid[1].innerHTML = data.userName;
    wid[2].innerHTML = genderEnum[data.userRole]
    wid[3].innerHTML = data.birthday;
    wid[4].innerHTML = data.phone;
    wid[5].innerHTML = data.address;
    wid[6].innerHTML = roleEnum[data.userRole];

    backBtn = $("#back");
    backBtn.on("click", function () {
        //alert("view : "+referer);
        if (referer !== undefined && "" !== referer && "null" !== referer
            && referer.length > 4) {
            window.location.href = referer;
        } else {
            history.back(-1);
        }
    });
});