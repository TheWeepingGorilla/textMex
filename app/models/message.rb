class Message < ActiveRecord::Base
  before_create :send_message

private

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/AC64f7a61a0d1ec57f894ce2504c33a18c/Messages.json",
      :user => "AC64f7a61a0d1ec57f894ce2504c33a18c",
      :password => "ff28441d18e64ddf3ff535004df4c4ed",
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
    ).execute
  end
end
