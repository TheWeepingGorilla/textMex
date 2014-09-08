class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @current_user = current_user

  end

  def create
    @contact = current_user.contacts.new(contact_params)
    if @contact.save
      flash[notice] = "Contact Sent."
      redirect_to new_contact_path
    else
      render 'new'
    end
  end

private
  def contact_params
    params.require(:contact).permit(:user_id,:contact_id)
  end
end
