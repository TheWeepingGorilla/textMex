require 'rails_helper'

describe 'send messages to phones from the web' do
  it 'sends an sms to a phone' do
    visit '/'
    fill_in 'body'
    fill_in 'to'
    fill_in 'from'
    click_link 'submit'
    expect(page).to have_content 'Message sent'
  end
end
