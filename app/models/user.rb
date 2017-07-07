class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb =>   "100x100#" }, :default_url => ":style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :products

  scope :seller, -> { where(:seller_role => true)}
  scope :admin, -> { where(:admin_role => true)}
  scope :member, -> { where(:user_role => true)}

  def status
    if self.admin_role
      "Admin"
    elsif self.seller_role
      "Seller"
    else
      "Member"
    end
  end

end
