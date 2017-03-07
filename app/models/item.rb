class Item < ApplicationRecord

  def scrape
    user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:53.0) Gecko/20100101 Firefox/53.0"

    doc = Nokogiri::HTML(open(self.link, 'User-Agent' => user_agent))

    selected_object = doc.css(self.selector)

    to_be_saved = "<ol>"

    selected_object.each do |row|
      to_be_saved += "<li>#{row.text}</li>"
    end

    to_be_saved += "</ol>"

    self.result = to_be_saved

    self.save
  end
end
