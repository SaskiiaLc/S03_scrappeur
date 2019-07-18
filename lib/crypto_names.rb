require 'rubygems'
require 'nokogiri'   
require 'open-uri'
PAGE_URL = "https://coinmarketcap.com/all/views/all/"

page = Nokogiri::HTML(open(PAGE_URL))


def name_crypto(page, i)
    name = page.xpath('//*[@class="link-secondary"]')[i].text
    return name
end

def price_crypto(page, i)
    price = page.xpath('//*[@class="price"]')[i].text
    return price
end

def money_crypto(page)
    money_crypto = Array.new
    
    50.times do |i| #J'ai préféré l'affichage de 50 crypto monnaie car pour limiter le temps de réponse du programme.
        money_crypto << {"#{name_crypto(page, i)}": "#{price_crypto(page, i)}"}
    end
    return money_crypto
end 

puts money_crypto(page)




