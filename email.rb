
# methode 1: recuperer adresse email à partir de url

require 'nokogiri'
require 'open-uri'
def get_the_email_of_a_townhal_from_its_webpage

  doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/78/maule.html'))

  i = 0
  doc.css("body > div > main > section:nth-child(2) > div > table > tbody > tr:nth-child(4) > td:nth-child(2)").each do |email|
    puts "Adresse email: #{email.content}"

    i+=1
  end
end
get_the_email_of_a_townhal_from_its_webpage()
