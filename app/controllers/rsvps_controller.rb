class RsvpsController < ApplicationController
  before_filter :course
  #before_filter :authenticate!

  def create
    #@course = current_user.courses.build(params[:course])
    if current_user.rsvp_for_class(course)
      message = "You've RSVP'd successfully"
    else
      message = "You've already signed up for this class"
    end

    flash[:success] = message
    redirect_to :back
  end

  def destroy
    if current_user.cancel_rsvp_for_class(course)
      message = "You've cancelled this RSVP successfully"
    else
      message = "You haven't RSVP'd for this class"
    end
    flash[:sucess] = message
    redirect_to :back
  end

  def course
    @course ||= Course.find(params[:course_id])
  end
end
