module Which
  
  def goto_homepage #visit http://www.which.co.uk/reviews/televisions
    visit '/reviews/televisions'
  end
  
  def show_television_reviews # find how many television are listed
      page.has_selector?:xpath, "/html/body/div[4]/div/div[1]/div/main/div[1]/div[1]/div/strong", :wait => 5
      showTvReviews = print find(:xpath, "/html/body/div[4]/div/div[1]/div/main/div[1]/div[1]/div/strong").text," ", find(:xpath, "/html/body/div[4]/div/div[1]/div/main/div[1]/div[1]/div/h1").text
      puts showTvReviews
  end
  
  def validate_homepage_url # checks if url is equal to homepage url
    expect(current_url).to include 'http://www.which.co.uk/reviews/televisions'
  end
  
end