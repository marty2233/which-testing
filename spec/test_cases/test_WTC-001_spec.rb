require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Should show all TV from brand Panasonic with screen size 70"' do
    Which "Begin" do

      Step 'Go to home page' do
        goto_homepage
      end

      Step 'Validate url' do
        validate_homepage_url
      end
            
      Step 'Validate if "Show more..." button exists' do
        assert_selector(:xpath, "/html/body/div[4]/div/div[1]/div/div/form/aside/section[1]/ul/li[8]/button")
      end

      Step 'Click on button "Show more..." ' do
        if has_selector? :xpath, "/html/body/div[4]/div/div[1]/div/div/form/aside/section[1]/ul/li[8]/button"
          find(:xpath, "/html/body/div[4]/div/div[1]/div/div/form/aside/section[1]/ul/li[8]/button").click
          find(:css, 'label[for="screen_size_70_150"]').click
        else
          find(:css, 'label[for="screen_size_70_150"]').click
        end
      end
                  
      Step 'Validate if check box "Panasonic" from Brands filter exists' do
        assert_selector(:xpath, "/html/body/div[4]/div/div[1]/div/div/form/aside/section[1]/ul/li[8]/button")
      end

      Step 'Click on check box "Panasonic" from brands' do
        find(:css, 'label[for="brands_panasonic"]').click
      end
      
                  
      Step 'Validate that there are listed TV' do
        assert_selector('li._3M9TC', :minimum => 1)
      end 

      Step 'Show television reviews.' do
        show_television_reviews
      end
    end
  end
end