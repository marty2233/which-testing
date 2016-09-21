require_relative '../../spec/spec_helper'
Test 'Which' do

  Scenario 'Testing' do
    Which "Begin" do
      
      Step 'Go to home page' do
        goto_homepage
      end
      
      Step 'Checks check box "Screen Size" 17-22"' do
        # find('li', :text => '17-22"').click
        # find(:xpath, "/html/body/div[4]/div/div[1]/div/div/form/aside/section[1]/ul/li[1]/label/div").click   
        find(:xpath, ".//*[@id='screen_size_17_22/section[1]/ul/li[1]/label/div']").click     
      end 
      
      Step 'Choose min price from option list' do
       find(:xpath, ".//*[@id='from']").click
       find(:xpath, ".//*[@id='from']/option[2]").click
      end 
      
      Step 'Choose max price from option list' do
       find(:xpath, ".//*[@id='to']").click
       find(:xpath, ".//*[@id='to']/option[14]").click
      end 
      
      # Step 'Checks check box "Screen Size" 17-22"' do
        # find('li', :text => '17-22"').click
      # end 
      
      Step 'Checks check box Samsung' do
        find(:xpath, "/html/body/div[4]/div/div[1]/div/div/form/aside/section[4]/ul/li[1]/label/div/span/span[1]").click
      end 
#       
      # Step 'Validate check box "Screen Size" 17-22" is checked' do
        # if has_checked_field?('li', :text => '17-22"') == false
          # puts"ok"
        # else
          # puts "not ok"
        # end        
      # end 
#       
      # Step 'Check check box "Screen Size" 24-32"' do
        # find('li', :text => '24-32"')
        # find('li', :text => '24-32"').click
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
#       
      # Step 'Uncheck check box "Screen Size" 17-22"' do
       # find('._1D9wd ztPan').find(:xpath, 'option[3]').select_option
      # end 
           
      
    end
  end
end 