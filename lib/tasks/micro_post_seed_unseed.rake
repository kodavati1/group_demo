namespace :micro_post  do |variable|
	
desc "seeds micro_post data"
	task :seed => :environment do
		for i in 0..100
			@micro_post =MicroPost.create(name:"name#{i}")
			puts @micro_post.name
		end
    end
end