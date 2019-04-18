module CourseSessionHelper
  def course_session_params
    params.require(:session).permit(:name, :start_time, :end_time,:address, :description)
  end

  def show_course_sessions
    @course_sessions = Session.find_by(course_id: params[:course_id])
    if @course_sessions
      render "objects/course_session"
    else
      @msg = "Error in generating object"
      @details = "sessions for the course are not found"
      render "objects/msg.json", status: :bad_request and return
    end

  end

  def show_course_session_instructor
    course_instructor  = CourseInstructor.find_by(course_id: params[:course_id], user: @user)
    @course_instructor_sessions = Session.find_by(course_id: params[:course_id], course_instructor: course_instructor)
    if @course_instructor_sessions
      render "objects/course_session"
    else
      @msg = "Error in generating object"
      @details = "sessions for the course are not found"
      render "objects/msg.json", status: :bad_request and return
    end

  end

  def create(course_session_params)
    @course_session = Session.new(course_session_params)
    if @course_session.save
      render 'objects/course.json'
    else
      @msg = "Error in generating course"
      @details = @course_session.errors
      render "objects/msg.json", status: :bad_request
    end

  end

  def update

  end

  def delete

  end

  def end_session

  end
end