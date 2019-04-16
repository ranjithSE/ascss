

$.ajaxSetup({
    contentType: "application/json; charset=utf-8"
});

$(document).ready(function () {

    $("#registerButton").click(function () {
        var loginCreds = {
            "user": {
                "first_name": $("#firstName").val(),
                "last_name": $("#lastName").val(),
                "username": $("#userName").val(),
                "email": $("#inputEmail").val(),
                "password": $("#inputPassword").val(),
                "password_confirmation": $("#inputPasswordConfirmation").val()
            }
        };

        $.post("/api/signup", JSON.stringify(loginCreds), function (data) {
            window.location.assign("/index")
        });
    });
});