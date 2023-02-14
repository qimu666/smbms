let id = null
let userCode = null
let userPassword = null
let address = null
let phone = null
let userName = null
let userRole = null
let birthday = null
let gender = null
let pageIndex = null;

const indexPath = "/user/search"
const localhost = "http://localhost:8080"
const userListPath = localhost + indexPath;

function init() {
    id = $("#id").val()
    userCode = $("#userCode").val()
    userPassword = $("#userPassword").val()
    address = $("#address").val()
    phone = $("#phone").val()
    userName = $("#userName").val()
    userRole = $("#userRole").val()
    birthday = $("#birthday").val()
    gender = $("#gender").val()
    pageIndex = $("#pageIndex").val()
}

export function login() {
    init()
    login()
    $("#userCode").val("")
    $("#userPassword").val("")
    async function login() {
        const data = {
            "userCode": userCode,
            "userPassword": userPassword,
        }
        await fetch('/user/login.do', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data)
        }).then(date => date.json())
            .then(res => {
                const {code, description} = res;
                if (code === 0) {
                    location.href = userListPath
                } else {
                    alert(description)
                }
            })
    }
}

export function save() {
    init()
    if (confirm("是否确认提交数据")) {
        async function userUpdate() {
            const data = {
                "id": id,
                "userCode": userCode,
                "userName": userName,
                "userPassword": userPassword,
                "address": address,
                "gender": gender,
                "phone": phone,
                "birthday": birthday,
                "userRole": userRole,
            }
            await fetch(path + '/user/user.do', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(data)
            }).then(date => date.json())
                .then(res => {
                    const {code, description} = res;
                    if (code === 0) {
                        location.href = userListPath
                    } else {
                        alert(description)
                    }
                })
        }

        userUpdate()
    }
}
