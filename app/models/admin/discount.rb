class Admin::Discount < Admin::Payment
  default_scope { where("amount < ?", 0) }
  
  belongs_to :order, class_name: "Admin::Order", foreign_key: :order_id
  belongs_to :admin, class_name: "Admin::Admin", foreign_key: :user_id
  
  validates :payment_method, presence: true
  validates :amount, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :order, presence: true
end
