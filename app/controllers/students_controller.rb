class StudentsController < ApplicationController
  def index 
    @students = Student.all
    render "index.json.jbuilder"
  end

  def create
    @student = Student.new({
      first_name: params[:first_name],
      last_name: params[:last_name], 
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_blog: params[:personal_blog],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo]
    })
    student.save
    skills = params[:skills].split(", ")
    skills.each do |skill|
      skill = Skill.new(
        student_id: @student.id,
        Name: skill
        )
      skill.save
    end
    education = Education.new({
      start_date: params[:education_start_date],
      end_date: params[:education_end_date],
      degree: params[:degree],
      University_name: params[:university_name],
      Details: params[:details],
      student_id: @student.id
    })
    education.save
    experience = Experience.new({
      start_date: params[:experience_start_date],
      end_date: params[:experience_end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: @student.id
    })
  end
end
