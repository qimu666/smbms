import {roleList, userDelete, userView} from "../services/user_api.js";
import {localhost} from "../config/config.js";

var userObj;

// 用户管理页面上点击删除按钮弹出删除框(userlist.jsp)
function deleteUser(obj) {
    userDelete(obj)
}

export function openYesOrNoDLG() {
    $('.zhezhao').css('display', 'block');
    $('#removeUse').fadeIn();
}

export function cancleBtn() {
    $('.zhezhao').css('display', 'none');
    $('#removeUse').fadeOut();
}

export function changeDLGContent(contentStr) {
    var p = $(".removeMain").find("p");
    p.html(contentStr);
}

$(function () {
    // 角色列表
    roleList()

    //通过jquery的class选择器（数组）
    //对每个class为viewUser的元素进行动作绑定（click）
    /**
     * bind、live、delegate
     * on
     */

    $(".viewUser").on("click", function () {
        //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
        var obj = $(this);
        let uid = obj.attr("userid");
        location.href = localhost + "/userView?uid=" + uid
    });

    $(".modifyUser").on("click", function () {
        var obj = $(this);
        window.location.href = localhost + "/user/update/" + obj.attr("userid");
    });

    $('#no').click(function () {
        cancleBtn();
    });

    $('#yes').click(function () {
        deleteUser(userObj);
    });

    $(".deleteUser").on("click", function () {
        userObj = $(this);
        changeDLGContent("你确定要删除用户【" + userObj.attr("username") + "】吗？");
        openYesOrNoDLG();
    });
});