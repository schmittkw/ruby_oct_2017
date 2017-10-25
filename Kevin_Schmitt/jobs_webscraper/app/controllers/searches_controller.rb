class SearchesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  def index
    render 'searches/index'
  end

  def create
    search = Search.create(search_params)
    if search.valid?

        return redirect_to show_path
    end

    flash[:errors] = user.errors.full_messages
    redirect_to :back
  end

  def show
    @result = Search.last
    arr1=[]
    url = "https://www.monster.com/jobs/search/?q=#{@result.title}&where=#{@result.city}__2C-#{@result.state}"
    
      document = open(url)
      content = document.read
      parsed_content = Nokogiri::HTML(content)



      parsed_content.css('.js_result_details').each do |row|
          title = row.css('.jobTitle').css('a').inner_text
          link = row.css('.jobTitle').css('a').first.attributes['href'].inner_text
          posted_at = row.css('time').first.attributes["datetime"].inner_text
          neigh_elem = row.css('.job-specs')

        if neigh_elem.any?
            neighborhood = neigh_elem.first.inner_text.strip
        else
            neighborhood = ''
        end

        arr2 = []
        arr2.push(title)
        arr2.push(neighborhood)
        arr2.push(posted_at)
        arr2.push(link)
        arr1.push(arr2)
        
        puts "#{title} #{neighborhood}"
        puts "Posted at #{posted_at}"
        puts '------------------------'
        puts ''
        @arr3 = arr1
      end
    return render 'searches/show'
  end


  private
  def search_params
      params.require(:search).permit(:title, :city, :state)
  end
end
