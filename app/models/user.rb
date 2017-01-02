class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :orders
  has_many :recent_views
  has_many :line_items
  has_many :permissions
  has_many :roles, through: :permissions

  after_create :generate_role

  def role?(role)
  	self.roles.pluck(:name).include? role 
  end

  private 

  def generate_role
  	Permission.create(user_id: self.id, role_id: Role.last.id)
  end
end
