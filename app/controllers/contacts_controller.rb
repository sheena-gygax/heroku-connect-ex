class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @contacts = Contact.all
    Contact.paginate(page: params[:page], per_page: 30)
  end

  def create 
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contacts_path
    end
  end 

  def show
  end

  private
  
  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :contact_external_id__c)
  end
end
