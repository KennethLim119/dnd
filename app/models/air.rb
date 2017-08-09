class Air < ActiveRecord::Base
    belongs_to :users
    
     has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
     validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

ratyrate_rateable "review"



end
