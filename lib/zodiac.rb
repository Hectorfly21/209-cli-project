class Zodiac
  attr_accessor :name, :description, :second_url   
  @@all = []

  def initialize(name, description, second_url)
    @name = name
    @description = description
    @second_url = second_url
    @@all << self
  end

  def self.all
    @@all
  end

  def print_all_names
   "#{@name}"
  end

  def self.print_all_names_to_be_selected
    @@all.each_with_index do |zodiac, index|
      puts "#{index + 1}.#{zodiac.name.capitalize}" 
    end
  end 
  def self.sort_alphabetically
    self.all.sort_by {|zodiac| zodiac.name }
  end

  def print_all_descriptions
    puts "======================="
    puts "Name: #{name.capitalize}"
    puts "Description: #{description.sentence}"
  end
end
   