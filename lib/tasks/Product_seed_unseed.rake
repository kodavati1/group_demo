namespace :product  do |variable|
desc "seeds product data"
	task :seed => :environment do
		for i in 0..100
			@product =Product.create(name:"name#{i}")
			puts @product.name
	    end
    end
end