$(document).ready(function() {
    if(localStorage.getItem("login") != "TRUE") {
        window.location.assign("/index")
    }
    else {
    $.getJSON('api/student/courses',
    function(data,message){
        if(data.courses.length>=1) {
        $(data.courses).each(function(i,course){
            $('#CoursesBody').append($("<tr>")
                .append($("<th>").append(course.id))
                .append($("<td>").append(course.code))
                .append($("<td>").append(course.title))
                .append($("<td>").append(course.semester))
                .append($("<td>").append(course.year))
                .append($("<td>").append(course.credits))
                .append($('<td><a class="btn btn-primary btn-sm" href="#" role="button">View</a>')));
        });
    } else {
        $('#CoursesTable').hide();
        $('.table-customise').append($("<div class='text-center'> NO COURSES TO VIEW </div>"))

    }
    },function(err) {
        alert(err);
    })         


    $("#logout").click(function () {
        $.post("/api/logout", function (data) {
            localStorage.setItem("login", "FALSE");
            window.location.assign('/index')
        });
    });
    }   
    
})


