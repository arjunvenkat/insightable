class Environment < ActiveRecord::Base
    has_many :mission_environments, dependent: :destroy
    has_many :missions, through: :mission_environments

    has_many :questions, as: :questionable

    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
