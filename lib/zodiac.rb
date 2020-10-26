class Zodiac
   attr_accessor :zodiac_name, :description_instances, :zodiac_url   
   @@all = []
   def initialize(zodiac_name, description_instances, zodiac_url)
    @zodiac_name = zodiac_name
    @description_instances = description_instances
    @zodiac_url = zodiac_url
    @@all << self
   end
   def self.all
    @@all
   end
   def print_name
    puts "===================================="
    puts "Name: #{@zodiac_name.capitalize}"
    puts "Description: #{description_instances.sentence}"
    puts ""
   end 
   def self.print_all_names
    @@all.each {|description| description.print_name}
  end
end



   