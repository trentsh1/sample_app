# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
	user.name 									"Trent Sheffer"
	user.email 									"trentsh1@umbc.edu"
	user.password 							"foobar"
	user.password_confirmation 	"foobar"
end


Factory.sequence :name do |n|
"Person #{n}"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
	micropost.content "Foo bar"
	micropost.association :user
end
