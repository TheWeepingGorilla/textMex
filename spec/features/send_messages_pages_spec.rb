require 'rails_helper'

describe 'send messages to phones from the web' do
  it 'sends an sms to a phone' do
    VCR.use_cassette('new_message') do
      visit '/'
      fill_in 'Body', :with => 'Sup, baby ninjas?!'
      fill_in 'To', :with => '2184646527'
      fill_in 'From', :with => '+15005550006'
      click_button 'Create Message'
      expect(page).to have_content 'Message Sent'
    end
  end
end
