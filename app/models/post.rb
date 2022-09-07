class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_rich_text :content
	has_many_attached :filenames

	 accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }

# before_destroy :message

# def message
# 	puts "Hey!,I will run before destroying an object"
# end


# after_initialize do |post|
#     puts "You have initialized an object!"
#   end

#   after_find do |post|
#     puts "You have found an object!"
#   end
end