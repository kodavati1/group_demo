namespace :post  do |variable|
	
desc "seeds post data"
	task :seed => :environment do
		for i in 0..100
			@post =Post.create(name:"name#{i}")
			puts @post.name
		end
    end
end