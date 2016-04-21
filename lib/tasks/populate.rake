namespace :db do

  desc "Erase and populate parts of database"

  task :populate => :environment do
    %w(
      Product
      Company
    ).each do |model|
      model.constantize.destroy_all
    end

    5.times do
      Company.create! name: Faker::Company.name,
        activated: true
    end
    puts 'Companies Created'

    Company.all.each do |company|
      Product.create! name: Faker::Commerce.product_name,
        activated: true,
        company: company
    end
    puts 'Products Created'
  end
end
