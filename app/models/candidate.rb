class Candidate < ActiveRecord::Base
  attr_accessible :area, :election_date, :email, :homepage, :mailing_address, :name, :office, :party, :phone, :latitude, :longitude, :gmaps
  acts_as_gmappable :address => "mailing_address", :lat => "latitude", :lng => "longitude", :process_geocoding => :geocode?

  #from  http://github.com/apneadiving/Google-Maps-for-Rails/wiki/DRY-example
  
  def geocode?
    (!mailing_address.blank? && (latitude.blank? || longitude.blank?)) || mailing_address_changed?
  end

end
