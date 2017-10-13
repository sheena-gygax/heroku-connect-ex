class Contact < ActiveRecord::Base 
  self.table_name =  'salesforce.contact'
   
  before_create :generate_uuid, unless: :contact_external_id__c?
  
private
  def generate_uuid
    self.contact_external_id__c = SecureRandom.uuid
  end
end
