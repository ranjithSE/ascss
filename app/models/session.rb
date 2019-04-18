class Session < ApplicationRecord
  belongs_to :course_instructor
  belongs_to :course

  def state
    t = Time.now
    s = Time.at(start_time)
    e = Time.at(end_time)

    if t > e
      return 'past'
    elsif t < s
      return 'future'
    else
      return 'active'
    end
  end
end
