class Zodiac
   attr_accessor :zodiac_name, :description_instances, :second_url   
   @@all = []
   def initialize(zodiac_name, description_instances, second_url)
    @zodiac_name = zodiac_name
    @description_instances = description_instances
    @second_url = second_url
    @@all << self
   end
   def self.all
    @@all
   end
   def print_all_names
    "#{@zodiac_name}"
   end
   def self.print_all_names_to_be_selected
    @@all.each_with_index do |zodiac, index|
    puts "#{index + 1}.#{zodiac.print_all_names.capitalize}" 
     end
   end 
   
   def print_all_descriptions
    print_all_names
    puts "======================="
    puts "Name: #{zodiac_name.capitalize}"
    puts "Description: #{description_instances.sentence}"
  end
end



   