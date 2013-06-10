namespace :db do
  task :clear => :environment do
    Comment.destroy_all
    Topic.destroy_all
    User.destroy_all
  end
end