require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Should sort all TV by Price high to low with range £600 to £1600' do
    Which "Begin" do

      Step 'Go to home page' do
        goto_homepage
      end

      Step 'Validate url' do
        validate_homepage_url
      end

      Step 'Validate if price £600 from option list exists' do
        assert_selector(:xpath, ".//*[@id='from']/option[7]")
      end

      Step 'Choose min price from option list £600' do
        find(:xpath, ".//*[@id='from']/option[7]").click
      end

      Step 'Validate if price £1600 from option list exists ' do
        assert_selector(:xpath, ".//*[@id='from']/option[7]")
      end

      Step 'Choose max price from option list £1600' do
        find(:xpath, ".//*[@id='to']/option[14]").click
      end

      Step 'Validate if Sort by "Price (high to low)" exists ' do
        assert_selector(:xpath, '//*[@id="product_listing_sorter"]/option[4]')
      end

      Step 'Sort by "Price (high to low)"' do
        find(:xpath, '//*[@id="product_listing_sorter"]/option[4]').click
      end

      Step 'Validate that there are listed TV' do
        assert_selector('li._3M9TC', :minimum => 1)
      end

      Step 'Show television reviews' do
        show_television_reviews
      end

      Step 'Show first TV with highest price with range £600 to £1600' do
        print find(:xpath, '/html/body/div[4]/div/div[1]/div/main/div[3]/ul/li[1]/div/a/div[5]/p[2]').text
      end

    end
  end
end