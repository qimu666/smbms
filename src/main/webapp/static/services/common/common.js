export default function ridDealWith(rid) {
    if (rid === "") {
        rid = 0
    } else {
        rid = parseInt(rid)
    }
    if (rid) {
        rid = 0
    }
    if (rid !== rid) {
        rid = 0;
    }
    return rid
}