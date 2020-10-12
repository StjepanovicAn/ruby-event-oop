class User

	attr_accessor :email 
	attr_accessor :age
	@@all_user =[]

	

	def initialize(user_email, user_age)
		@email = user_email
		@age = user_age
		@@all_user.push(self)

	end

	def self.all
		puts @@all_user
	end

	def self.find_by_email(email)
		@@all_user.each{|user|
			if user.email = email 
				return user

			end
		}

	end

end

