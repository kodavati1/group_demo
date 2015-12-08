namespace :user  do |variable|
	
desc "seeds user data"
	task :seed => :environment do
		for i in 0..100
			@user =User.create(name:"name#{i}")
			puts @user.name
		end
    end
end
