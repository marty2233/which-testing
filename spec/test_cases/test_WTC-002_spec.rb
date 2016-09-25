require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Should show all TV with screen size 47-50" with price higher than £600' do
    Which "Begin" do
      
      Step 'Go to home page' do
        goto_homepage 
      end
      
      Step 'Validate url' do
        validate_homepage_url
      end
      
      Step 'Click on check box "Screen Size" 47-51"' do
        find(:css, 'label[for="screen_size_47_51"]').click 
      end 
      
      Step 'Choose min price from option list £600' do
        find(:xpath, ".//*[@id='from']/option[7]").click
      end 

      Step 'Show television reviews.' do
        show_television_reviews
      end
    end
  end
end 