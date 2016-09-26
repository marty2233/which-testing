require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Should list all TV with screen size 17-22"' do
    Which "Begin" do

      Step 'Go to home page' do
        goto_homepage
      end

      Step 'Validate url' do
        validate_homepage_url
      end

      Step 'Validate if check box " 17-23" " from Screen size filter exists' do
        assert_selector(:css, 'label[for="screen_size_17_23"]')
      end

      Step 'Click on check box " 17-23" " from Screen size filter' do
        find(:css, 'label[for="screen_size_17_23"]').click
      end
      
      Step 'Validate if check box "Samsung" from Brands filter exists' do
        assert_selector(:css, 'label[for="screen_size_17_23"]')
      end

      Step 'Click on check box "Samsung" from Brands filter' do
        find(:css, 'label[for="brands_samsung"]').click
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