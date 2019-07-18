require 'rubygems'
require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://www.annuaire-des-mairies.com/95/avernes.html"
PAGE_URL_ANU = "https://www.annuaire-des-mairies.com/val-d-oise.html"

page = Nokogiri::HTML(open(PAGE_URL))
page_anu = Nokogiri::HTML(open(PAGE_URL_ANU))

def get_townhall_email(page)
    name = page.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text

    return name
end

puts get_townhall_email(page)

