def course_student_format(json, course_student)
  json.id course_student.id
  json.course_id course_student.course.id
  json.code course_student.course.code
  json.username course_student.username

  unless course_student.user.blank?
    json.user_id course_student.user.id
  end

  if @raw == nil
    json.title course_student.course.title
    json.semester course_student.course.semester
    json.year course_student.course.year
    json.credits course_student.course.credits
  end
end

if @course_student != nil
  json.course do
    course_student_format json, @course_student
  end
end

if @course_students != nil
  json.courses @course_students do |each_course|
    course_student_format json, each_course
  end
end