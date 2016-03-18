# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'
require_relative 'app/models/contact'

def list
	contacts = Contact.all
	contacts.each_with_index do |contact, index|
	puts "#{index+1} #{contact.name}, #{contact.phone}, #{contact.address}"
	end
end

def add(name, phone, address)
	contact = Contact.create(name: name, phone: phone , address: address)
end

def update (id, name, phone, address)
	contact = Contact.find_by(id: id)
	contact.update(name: name, phone: phone, address: address)
end

def delete(id)
	contact = Contact.find_by(id: id)
	p contact
	contact.destroy
end

def update_list(id)
	contacts = Contact.all
	contacts.each do |contact|
	contact.update(id: id)
	p "contactlist updated"
	end
end

	input = ARGV 
	case input[0]
	when 'list' 
	list
	when 'add'
	add(input[1], input[2], input[3])
	p "New contact added!"
	when 'update'
		# if input[1][0].to_i > Contact.count
		# p "Hey, Something went wrong! I can't find that USER! Are you sure that is the right ID?" 
		# else
		update(input[2], input[3], input[4])
		p "Contact updated!"
		# end
	when 'delete'
		# if input[1][0].to_i > Contact.count
		# p "Hey, Something went wrong! I can't find that USER! Are you sure that is the right ID?" 
		# else 
		delete(input[1])
		p "Contact deleted!"
		# end
	end	

