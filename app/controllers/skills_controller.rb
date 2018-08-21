class SkillsController < ApplicationController
  def index
    @skills = Skill.all 
    render "index.json.jbuilder"
  end 

  def create 
    @skill = Skill.new(
      name: params[:name],
      student_id: params[:student_id]
    )
    @skill.save
    render "show.json.jbuilder"
  end 
end
