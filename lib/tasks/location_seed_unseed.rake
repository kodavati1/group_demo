namespace :location  do |variable|
	
desc "seeds location data"
	task :seed => :environment do
		for i in 0..100
			@location =Location.create(name:"name#{i}")
			puts @location.name
		end
    end
end