class SearchesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  def index
    # @states = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DC", "DE", "FL", "GA", 
    # "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", 
    # "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", 
    # "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", 
    # "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
    render 'searches/index'
  end

  def create
    search = Search.create(search_params)
    if search.valid?

        return redirect_to show_path
    end

    flash[:errors] = search.errors.full_messages
    redirect_to :back
  end

  def show
    @result = Search.last

    #Monster.com
    @arr3 = []
    arr1=[]
    url = "https://www.monster.com/jobs/search/?q=#{@result.title}&where=#{@result.city}__2C-#{@result.state}"
    
      document = open(url)
      content = document.read
      parsed_content = Nokogiri::HTML(content)



      parsed_content.css('.js_result_details').each do |row|
          title = row.css('.jobTitle').css('a').inner_text
          link = row.css('.jobTitle').css('a').first.attributes['href'].inner_text
          posted_at = row.css('time').first.inner_text
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
        
        # puts "#{title} #{neighborhood}"
        # puts "Posted at #{posted_at}"
        # puts '------------------------'
        # puts ''
        @arr3 = arr1
      end

    url = "https://www.monster.com/jobs/search/?q=#{@result.title}&where=#{@result.city}__2C-#{@result.state}&page=2"
      
      
      document = open(url)
      content = document.read
      parsed_content = Nokogiri::HTML(content)



      parsed_content.css('.js_result_details').each do |row|
          title = row.css('.jobTitle').css('a').inner_text
          link = row.css('.jobTitle').css('a').first.attributes['href'].inner_text
          posted_at = row.css('time').first.inner_text
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
        
        @arr3 = arr1
      end


      

      #Indeed.com
      arr4=[]
      @arr6 = []
      url = "https://www.indeed.com/jobs?q=#{ @result.title }&l=#{ @result.city }%2C+#{ @result.state }"
      
        document = open(url)
        content = document.read
        parsed_content = Nokogiri::HTML(content)
  
  
  
        parsed_content.css('.result').each do |row|
          title = row.css('a').first.inner_text
          link = row.css('a').first.attributes['href'].inner_text
          posted_at = row.css('.date').inner_text
          neigh_elem = row.css('.location').inner_text
          
          neighborhood = neigh_elem

        arr5 = []
        arr5.push(title)
        arr5.push(neighborhood)
        arr5.push(posted_at)
        arr5.push("https://www.indeed.com"+link)
        arr4.push(arr5)
        
        @arr6 = arr4
      end

      url = "https://www.indeed.com/jobs?q=#{ @result.title }&l=#{ @result.city }%2C+#{ @result.state }&start=10"
      
        document = open(url)
        content = document.read
        parsed_content = Nokogiri::HTML(content)
  
  
  
        parsed_content.css('.result').each do |row|
          title = row.css('a').first.inner_text
          link = row.css('a').first.attributes['href'].inner_text
          posted_at = row.css('.date').inner_text
          neigh_elem = row.css('.location').inner_text
          
          neighborhood = neigh_elem

        arr5 = []
        arr5.push(title)
        arr5.push(neighborhood)
        arr5.push(posted_at)
        arr5.push("https://www.indeed.com"+link)
        arr4.push(arr5)
        
        @arr6 = arr4
      end


      #Dice.com
      arr7=[]
      @arr9 = []
      url = "https://www.dice.com/jobs?q=#{ @result.title }&l=#{ @result.city }%2C+#{ @result.state }"
      
        document = open(url)
        content = document.read
        parsed_content = Nokogiri::HTML(content)
  
  
  
        parsed_content.css('.complete-serp-result-div').each do |row|
          title = row.css('.list-inline').first.css('a').first.inner_text
          link = row.css('.list-inline').first.css('a').first.attributes['href'].inner_text
          posted_at = row.css('.details').first.css('.posted').first.inner_text
          neigh_elem = row.css('.location').inner_text
          
          neighborhood = neigh_elem

        arr8 = []
        arr8.push(title)
        arr8.push(neighborhood)
        arr8.push(posted_at)
        arr8.push("https://www.dice.com"+link)
        arr7.push(arr8)
        
        @arr9 = arr7
      end



    return render 'searches/show'
  end


  def delete
    searches = Search.all
    searches.each do |a|
      a.delete
    end
    redirect_to root_path
  end

  private
  def search_params
      params.require(:search).permit(:title, :city, :state)
  end
end
