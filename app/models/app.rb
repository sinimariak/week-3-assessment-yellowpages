# class Contact 
# 	attr_reader :tasks, :selection

# 	def initialize(name, phone, address)
# 		@name = name
# 		@phone = phone
# 		@address = address
# 	end
# end


# class Book < ActiveRecord::Base
# 	attr_reader :contacts

# 	def initialize(file)
# 		@file = 'yellowpages.csv'
# 		@contacts = nil

# 	def import
# 		return @contacts if @contacts
# 		@contacts = []
# 		CSV.foreach('yellowpages.csv') do |row|
# 			contact = Contact.new(row[0])
# 			@contact << contact
# 		end
		
# 	end

# 	def display
# 		@contacts.each_with_index do |contact, index|
# 			puts "#{index+1} #{contact.name}"
# 		end
# 	end
# end


