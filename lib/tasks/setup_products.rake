task :setup_products => :environment do 
	10.times do 
		Category.create(name: Faker::Commerce.department(1))
	end

	Category.all.each do |category|
		5.times do 
			category.sub_categories.create(name: Faker::Commerce.department(1))
		end
	end

	1000.times do 
		category = Category.order("RANDOM()").first
		sub_category_id = category.sub_categories.pluck(:id).sample
		Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, category_id: category.id, sub_category_id: sub_category_id,  is_featured: [true,false].sample)
	end

end