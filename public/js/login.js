

$.ajaxSetup({
    contentType: "application/json; charset=utf-8"
});

$(document).ready(function () {

    localStorage.setItem("login", "FALSE");

    $("#loginButton").click(function () {
        var loginCreds = {
            "user": {
                "email": $("#inputEmail").val(),
                "password": $("#inputPassword").val()
            }
        };

        $.post("/api/login", JSON.stringify(loginCreds), function (data) {
            localStorage.setItem("login", "TRUE");
            window.location.assign('/home')
        });
    });
});