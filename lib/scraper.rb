

class Scraper
   def initialize
    @base_url = "https://www.chinahighlights.com"
   end
   
   def first_scrape
   html = open(@base_url + "/travelguide/chinese-zodiac/")
   html_parsed_to_elements = Nokogiri::HTML(html)
   zodiac_elements = html_parsed_to_elements.css(".col-xs-12")
      
   zodiac_elements.each do |zodiac_element|
   zodiac_name = zodiac_element.css('a')[0].children[0].attr('alt')
   
   zodiac_url = zodiac_element.css('a')[0].attr('href')
   
   zodiac_html = open(@base_url + zodiac_url)
   zodiac_url_parsed_to_elements = Nokogiri::HTML(zodiac_html)
   description = zodiac_url_parsed_to_elements.css('.container p')[10].text
   
   description_instance = Description.find_or_create_by_name(description)
   zodiac = Zodiac.new(zodiac_name, description_instance, zodiac_url)
   
    end
  end
end
