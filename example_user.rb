class User
	attr_accessor :name, :mail

	def initialize(attributes = {})
		@name = attributes[:name]
		@mail = attributes[:mail]
	end

	def formatted_mail
		"#{@name} <#{mail}>"
	end
end
