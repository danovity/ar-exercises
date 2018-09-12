require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :hourly_rate, :numericality => {:only_integer => true}
end

class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, :numericality => {:only_integer => true}, length: {minimum: 0}
=begin 
validate :check_men_or_women 
=end
end
=begin 
def check_men_or_women
  false unless self.mens_apparel.is_a?(Boolean) || self.womens_apparel.is_a?(Boolean)
end 
=end
@store_name = gets.chomp

@store10 = Store.create(name: @store_name)
if @store10.errors.any?
  @store10.errors.full_messages.each do |msg|
    puts msg
  end
end
