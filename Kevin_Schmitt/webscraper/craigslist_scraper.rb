require 'open-uri'
require 'nokogiri'

# cities  = ['dallas','seattle']
# search_terms = ['web+developer','full+stack']

# cities.each do |city|
#     search_terms.each do |search_term|
        
#         url = "https://#{city}.craigslist.org/search/cpg?query=#{search_term}&is_paid=all"

#         document = open(url)
#         content = document.read
#         parsed_content = Nokogiri::HTML(content)


#         puts '===================================='
#         puts '-                                  -'
#         puts "       #{city} #{search_term}       "
#         puts '-                                  -'
#         puts "===================================="

#         parsed_content.css('.result-row').each do |row|
#             title = row.css('.hdrlnk').inner_text
#             posted_at = row.css('time').first.attributes["datetime"].value
#             neigh_elem = row.css('.result-hood')

#             if neigh_elem.any?
#                 neighborhood = neigh_elem.first.inner_text.strip
#             else
#                 neighborhood = ''
#             end

#             puts "#{title} #{neighborhood}"
#             puts "Posted at #{posted_at}"
#             puts '------------------------'
#             puts ''
#         end
#     end
# end

cities  = ['sacramento']
search_terms = ['web-developer', 'babysitter']
state = ['ca']

cities.each do |city|
    search_terms.each do |search_term|
        arr1 = []
        arr3 = []
        url = "https://www.monster.com/jobs/search/?q=#{search_term}&where=#{city}__2C-#{state}"

        document = open(url)
        content = document.read
        parsed_content = Nokogiri::HTML(content)


        puts '===================================='
        puts '-                                  -'
        puts "       #{city} #{search_term}       "
        puts '-                                  -'
        puts "===================================="

        parsed_content.css('.js_result_details').each do |row|
            title = row.css('.jobTitle').inner_text
            link = row.css('.jobTitle').css('a').first.attributes['href'].inner_text
            posted_at = row.css('time').first.attributes["datetime"].inner_text
            neigh_elem = row.css('.job-specs')

            if neigh_elem.any?
                neighborhood = neigh_elem.first.inner_text.strip
            else
                neighborhood = ''
            end
            puts link
            # arr2 = []
            # arr2.push(title)
            # arr2.push(neighborhood)
            # arr2.push(posted_at)
            # arr1.push(arr2)
            
            # puts "#{title} #{neighborhood}"
            # puts "Posted at #{posted_at}"
            puts '------------------------'
            puts ''
        end
        # puts arr1
    end
end