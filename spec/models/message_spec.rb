require 'rails_helper'

describe Message, :vcr => true do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '+12184646527', :from => '+15005550006')
    expect(message.save).to be_true
  end
end
