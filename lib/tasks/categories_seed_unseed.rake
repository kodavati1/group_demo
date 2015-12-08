namespace :categories  do |variable|
	
desc "seeds categories data"
	task :seed => :environment do
		for i in 0..100
			@category =Category.create(name:"name#{i}")
			puts @category.name
		end
    end
end