class Item < ApplicationRecord

  def scrape
    user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:53.0) Gecko/20100101 Firefox/53.0"

    doc = Nokogiri::HTML(open(self.link, 'User-Agent' => user_agent))

    selected_object = doc.css(self.selector)

    to_be_saved = "<ol>"

    selected_object.each do |row|
      # to_be_saved += "<li>#{row.text}</li>"
      if self.extra == "uniqlo"
        to_be_saved += "<li><p>#{row.css('div:nth-child(3) > h2 > a').text}</p>"
        to_be_saved += "<p>#{row.css('div:nth-child(3) > div:nth-child(2) > p:nth-child(2) > span:nth-child(1)').text}</p></li>"
        to_be_saved += "<img src=#{row.css('img').attr('data-original').text}>"
      else
        to_be_saved += "<li>#{row.text}</li>"
      end
    end

    to_be_saved += "</ol>"

    self.result = to_be_saved

    self.save
  end
end
