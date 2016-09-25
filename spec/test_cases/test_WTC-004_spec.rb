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
      
      Step 'Click on check box popular_screen_sizes_32 ' do
        find(:css, 'label[for="popular_screen_sizes_32-inch"]').click
      end      
      
      Step 'Click on check box Resolution Full HD ' do
        find(:css, 'label[for="resolution_full_hd"]').click
      end

      Step 'Click on check box Features Smart TV ' do
        find(:css, 'label[for="features_smart_tv"]').click
      end
      
      Step 'Click on check box Retailers Tesco Direct' do
        find(:css, 'label[for="retailers_tesco_direct"]').click
      end

      Step 'Show television reviews.' do
        show_television_reviews
      end
    end
  end
end