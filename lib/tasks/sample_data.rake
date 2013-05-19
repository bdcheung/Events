namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		Event.create!(	name: "Example event",
						startdate: "2013-12-31 12:00:00",
						enddate: "2013-12-31 14:00:00",
						description: "Example description",
						agegroup: "Toddlers",
						location: "Ashburn, VA",
						registration_url: "http://www.google.com",
						information_url: "http://www.bing.com")

		99.times do |n|
			name = Faker::Lorem.words(num = rand(1..5)).join(sep=" ").capitalize
			startdate = Time.now + n.day
			enddate = Time.now + n.day
			description = Faker::Lorem.paragraph(sentence_count = 5)
			agegroup = "Toddlers"
			location = "#{Faker::Address.city}, #{Faker::Address.state_abbr}"
			registration_url = Faker::Internet.url
			information_url = Faker::Internet.url
			Event.create!(
				name: name,
				startdate: startdate,
				enddate: enddate,
				description: description,
				agegroup: agegroup,
				location: location,
				registration_url: registration_url,
				information_url: information_url
				)
		end
	end
end