import {localhost} from "../config/config.js";
import {getProductName, getProviderList} from "../services/api/bill_api.js";
import {current} from "../services/interceptor/Request.js";

var BillObj;

// 用户管理页面上点击删除按钮弹出删除框(Billlist.jsp)
function deleteBill(obj) {
    // BillDelete(obj)
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
    current()
    // getIsPayment()
    getProductName()
    // 角色列表
    getProviderList()

    $(".viewBill").on("click", function () {
        //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
        var obj = $(this);
        let uid = obj.attr("billid");
        location.href = localhost + "/BillView?uid=" + uid
    });

    $(".modifyBill").on("click", function () {
        var obj = $(this);
        window.location.href = localhost + "/Bill/update/" + obj.attr("billid");
    });

    $('#no').click(function () {
        cancleBtn();
    });

    $('#yes').click(function () {
        deleteBill(BillObj);
    });

    $(".deleteBill").on("click", function () {
        BillObj = $(this);
        changeDLGContent("你确定要删除用户【" + BillObj.attr("Billname") + "】吗？");
        openYesOrNoDLG();
    });
});