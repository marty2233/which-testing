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

      Step 'Click on check box "Screen Size" 17-23"' do
        find(:css, 'label[for="screen_size_17_23"]').click
      end

      Step 'Click on check box "Samsung" from brands' do
        find(:css, 'label[for="brands_samsung"]').click
      end

      Step 'Show television reviews.' do
        show_television_reviews
      end

    end
  end
end 