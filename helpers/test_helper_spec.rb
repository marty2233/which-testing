module Which
  
  def goto_homepage
    visit '/reviews/televisions'
  end
  
  def show_television_reviews
      page.has_selector?:xpath, "/html/body/div[4]/div/div[1]/div/main/div[1]/div[1]/div/strong", :wait => 5
      showTvReviews = print find(:xpath, "/html/body/div[4]/div/div[1]/div/main/div[1]/div[1]/div/strong").text," ", find(:xpath, "/html/body/div[4]/div/div[1]/div/main/div[1]/div[1]/div/h1").text
      puts showTvReviews
  end
  
  def validate_homepage_url
    expect(current_url).to include 'http://www.which.co.uk/reviews/televisions'
  end
  
end