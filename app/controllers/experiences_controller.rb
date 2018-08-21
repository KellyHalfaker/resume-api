class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all 
    render "index.json.jbuilder"
  end 

  def create 
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
    )
    @experience.save
    render "show.json.jbuilder"
  end 

  def update 
    @experience = Experience.find_by(id:params[:id])
    @experience.start_date = params[:start_date] || 
    @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.details = params[:details] || @experience.details
 
    if @experience.save
      render "show.json.jbuilder"
    end
  end 

  def destroy
    @experience = Experience.find_by(id:params[:id])
    if @experience.destroy
      render json:{message:"The experience has been forgotten"}
    end 
  end 
end
