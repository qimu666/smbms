import request from "../request/API.js";
import {isPaymentEnum} from "../common/commonEnum.js";
import ridDealWith, {pagIng} from "../common/common.js";


const urlParams = new URLSearchParams(window.location.search);
let pName = urlParams.get('productName');
let payID = urlParams.get('isPayment');
let providerId = urlParams.get('providerId');
let pageIndex = urlParams.get('pageIndex');

pageIndex = ridDealWith(pageIndex)
payID = ridDealWith(payID)
providerId = ridDealWith(providerId)

let payId = $("#payId")
let payment = $("#isPayment")
let productName = $("#productName")
let provider = $("#providerId");
provider.next().html("*");

let rid = $("#pid").val()

function providerList(data, rid, options) {
    if (rid !== 0) {
        options = select(data, rid, options)
        options += "<option value=\"0\">-- 请选择 --</option>";
    }
    if (rid === 0) {
        options = "<option value=\"0\">-- 请选择 --</option>";
        options = select(data, rid, options)
    }
    return options
}


function select(data, rid, options) {
    for (let i = 0; i < data.length; i++) {
        options += "<option "
        if (rid === data[i].id) {
            options += "selected = 'selected'"
        }
        options += " value =" + data[i].id + ">" + data[i].proName + "</option>"
    }
    return options
}

export function getBills() {
    pName = pName ? pName : ""
    request.get('/bill/bills', {
        params: {
            productName: pName,
            isPayment: payID,
            providerId: providerId,
            pageIndex: pageIndex ? pageIndex : 1
        }
    }).then(res => {
            let data = res.data || {};
            if (typeof data === 'string') {
                data = JSON.parse(data);
            }
            provider.html("");
            let options = null;
            rid = ridDealWith(rid)
            const prData = data.providerList
            options = providerList(prData, rid, options)
            billList(data.billList)

            $("#totalPageCount").text(data.totalPageCount)
            $("#totalCount").text(data.totalCount)
            $("#currentPageNo").text(data.nowPage)
            let pageCount = $("#pageCount").val(data.totalPageCount)
            let newPageNo = $("#newPageNo").val(data.nowPage)
            $("#totalCounts").val(data.totalCount)
            pageCount = ridDealWith(pageCount.val())
            newPageNo = ridDealWith(newPageNo.val())
            // totalCounts = totalCounts.val()
            pagIng(newPageNo, pageCount)

            provider.html(options);
            provider.val(providerId)
            productName.val(data.productName);
            payment = payment.val(data.isPayment)
            payId.val(payment)
        }
    )
}


function billList(data) {
    const tbody = document.querySelector('#billTable');
    data.forEach(bill => {
        const rowHtml = `
     <tr>
        <td>${bill.billCode}</td>
        <td>${bill.productName}</td>
        <td>${bill.providerName}</td>
        <td>${bill.totalPrice}</td>
        <td>${isPaymentEnum[bill.isPayment]}</td>
        <td>${bill.creationDate}</td>
        <td>
           <a class="viewBill" href="javascript:;" billid=${bill.id} billcc=${bill.billCode}>
           <img src="/static/images/read.png" alt="查看" title="查看"/></a>
           <a class="modifyBill" href="javascript:;" billid=${bill.id} billcc=${bill.billCode}>
           <img src="/static/images/xiugai.png" alt="修改" title="修改"/></a>
           <a class="deleteBill" href="javascript:;" billid=${bill.id} billcc=${bill.billCode}>
           <img src="/static/images/schu.png" alt="删除" title="删除"/></a>
        </td>
     </tr>`;
        tbody.insertAdjacentHTML('beforeend', rowHtml);
    })
}


