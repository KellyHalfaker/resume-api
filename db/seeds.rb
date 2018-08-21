# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


student1 = Student.new({first_name: "Jim", last_name: "Smith", email: "jim@email.com", phone_number: "555-555-5555", short_bio: "My name is Jim and I would like a job.", linkedin_url: "jim@linkedin.com", twitter_handle: "@jim", personal_blog: "medium.com/jim", online_resume_url: "resume.com/jim", github_url: "github.com/jim", photo: "photo.com/jim"})
student1.save
student2 = Student.new({first_name: "Jane", last_name: "Doe", email: "jane@email.com", phone_number: "333-333-3333", short_bio: "My name is jane and I would like a job.", linkedin_url: "jane@linkedin.com", twitter_handle: "@jane", personal_blog: "medium.com/jane", online_resume_url: "resume.com/jane", github_url: "github.com/jane", photo: "photo.com/jane"})
student2.save
student3 =  Student.new({first_name: "Tim", last_name: "Long", email: "tim@email.com", phone_number: "333-333-3333", short_bio: "My name is tim and I would like a job.", linkedin_url: "tim@linkedin.com", twitter_handle: "@tim", personal_blog: "medium.com/tim", online_resume_url: "resume.com/tim", github_url: "github.com/tim", photo: "photo.com/tim"})
student3.save

experience1 = Experience.new({start_date: Date.now - 10.days, end_date: Date.now - 2.days, job_title: "Very important dude", company_name: "Important People Inc.", details: "I was a very important dude"})
experience1.save
experience2 = Experience.new({start_date: Date.now - 15.days, end_date: Date.now - 1.days, job_title: "Cool gal", company_name: "Yoyoyoyoyo", details: "Very chill"})
experience2.save
experience3 = Experience.new({start_date: Date.now - 20.days, end_date: Date.now - 1.days, job_title: "Wow", company_name: "Great", details: "Excellent"})
experience3.save

skill1 = Skill.new({Name: "Metalworking"})
skill1.save
skill2 = Skill.new({Name: "Sleep marathoning"})
skill2.save
skill3 = Skill.new({Name: "Turning technology off and back on again to fix it"})
skill3.save


education1 = Education.new({start_date: Date.now - 300.days, end_date: Date.now - 100.days, degree: "Bachelors in Partying", University_name: "Harvard", details: "I was hecka good at partying"})
education1.save
education2 = Education.new({start_date: Date.now - 500.days, end_date: Date.now - 200.days, degree: "Bachelors in Napping", University_name: "Duke", details: "
  Sleep is important"})
education2.save
education3 = Education.new({start_date: Date.now - 900.days, end_date: Date.now - 300.days, degree: "Bachelors in Napping", University_name: "MIT", details: "I need 10 hours a night at least"})
education3.save
