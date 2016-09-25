require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Test test' do
    Which "Begin" do
      
      Step 'Go to home page' do
        goto_homepage
      end
      
      Step 'Checks check box "Screen Size" 17-22"' do
        find(:css, 'label[for="screen_size_17_23"]').click 
      end 
      
      Step 'Choose min price from option list' do
       find(:xpath, ".//*[@id='from']").click
       find(:xpath, ".//*[@id='from']/option[7]").click
      end 
      
      Step 'Choose max price from option list' do
       find(:xpath, ".//*[@id='to']").click
       find(:xpath, ".//*[@id='to']/option[14]").click
      end 
      
      Step 'Validate check box "Screen Size" 17-22" is checked' do
        find(:css, 'label[for="brands_samsung"]')
      end 
     
      Step 'Checks check box Samsung' do
        find(:css, 'label[for="brands_samsung"]').click 
      end 
      
      
      Step 'Validate that there are listed items' do
        assert_selector('li._3M9TC', :minimum => 1)
        #expect(find('ul.p3lYM')).to have_selector('li', count: 6)
      end 
#       
      # Step 'Check check box "Screen Size" 24-33"' do
        # find(:css, 'label[for="screen_size_24_33"]').click
      # end   
#          
      # Step 'Validate check box "Screen Size" 24-32" is checked' do
        # has_checked_field?('screen_size_24_32')
      # end 
#       
      # Step 'Validate check box "Screen Size" 39-46" is checked' do
        # if has_checked_field?('li', :text => '39-46"') == false
          # puts"ok"
        # else
          # puts "not ok"
        # end 
      # end 
         
      
    end
  end
end 