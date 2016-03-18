require 'csv'
require_relative '../app/models/contact'
require 'byebug'

class ContactsImporter
  def self.import(filename)
  	csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
  		
  	contact = Contact.create(row.to_hash)
    p contact
  	end

  end
end

# ContactsImporter.import('yellowpages.csv')


