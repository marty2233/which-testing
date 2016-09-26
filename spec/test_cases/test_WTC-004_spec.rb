require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Should show all TV with screen size 32",Full HD resolution, feature Smart TV, retailer Tesco Direct' do
    Which "Begin" do

      Step 'Go to home page' do
        goto_homepage
      end

      Step 'Validate url' do
        validate_homepage_url
      end
      
      Step 'Validate that check box "32-inch" from Popular Screen sizes filter exists' do
        assert_selector(:css, 'label[for="popular_screen_sizes_32-inch"]')
      end
      
      Step 'Click on check box Popular Screen sizes 32-inch ' do
        find(:css, 'label[for="popular_screen_sizes_32-inch"]').click
      end            
            
      Step 'Validate if check box "Full HD" from Resolution filter exists' do
        assert_selector(:css, 'label[for="resolution_full_hd"]')
      end
      
      Step 'Click on check box Resolution Full HD ' do
        find(:css, 'label[for="resolution_full_hd"]').click
      end
            
      Step 'Validate if check box "Smart TV" from Features filter exists' do
        assert_selector(:css, 'label[for="features_smart_tv"]')
      end

      Step 'Click on check box Features Smart TV ' do
        find(:css, 'label[for="features_smart_tv"]').click
      end
            
      Step 'Validate if check box "Tesco Direct" from Retailers filter exists' do
        assert_selector(:css, 'label[for="retailers_tesco_direct"]')
      end
      
      Step 'Click on check box Retailers Tesco Direct' do
        find(:css, 'label[for="retailers_tesco_direct"]').click
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