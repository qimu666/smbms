export default function ridDealWith(rid) {
    if (rid === "") {
        rid = 0
    } else {
        rid = parseInt(rid)
    }
    if (rid !== rid) {
        rid = 0;
    }
    return rid
}

/** 分页 **/
export function pagIng(newPageNo, pageCount) {
    const pageUl = document.querySelector('#pageUl');
    let rowHtml = `<`;
    if (newPageNo >= pageCount) {
        rowHtml += `<a href="javascript:page_nav(document.forms[0],1);">首页</a>
                            <a href="javascript:page_nav(document.forms[0],${newPageNo - 1});">上一页</a>`
    } else if (newPageNo > 1) {
        rowHtml += `<a href="javascript:page_nav(document.forms[0],1);">首页</a>
                            <a href="javascript:page_nav(document.forms[0],${newPageNo - 1});">上一页</a>
                            <a href="javascript:page_nav(document.forms[0],${newPageNo + 1});">下一页</a>
                            <a href="javascript:page_nav(document.forms[0],${pageCount});">最后一页</a>`
    } else if (newPageNo === 1) {
        rowHtml += `<a href="javascript:page_nav(document.forms[0],${newPageNo + 1});">下一页</a>
                            <a href="javascript:page_nav(document.forms[0],${pageCount});">最后一页</a>`
    }
    rowHtml += `>`

    pageUl.insertAdjacentHTML('beforeend', rowHtml);

}