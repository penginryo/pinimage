class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  # def update_without_current_password(params, *options)
  # 	params.delete(:current_password)

  # 	if params[:password].blank?
  # 		params.delete(:password)
  # 		params.delete(:password_confirmation) if params[:password_confirmation].blank?
  # 	end

  # 	clean_up_passwords
  # 	update_attributes(params, *options)
  # end

end
