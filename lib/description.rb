 class Description
   attr_accessor :sentence
   @@all = []
 def initialize(sentence)
  @sentence = sentence
  @@all << self
 end
  def zodiac
    Zodiac.all.select {|zodiac| zodiac.description == self}
  end
  def self.find_or_create_by_name(sentence)
    found_description = self.all.find {|description| description.sentence == sentence}
 if found_description
  return found_description
else 
 return self.new(sentence)
   end
 end
 def self.all 
   @@all
  end
end