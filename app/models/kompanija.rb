class Kompanija < ActiveRecord::Base
  attr_accessible :address, :comment, :dateBegin, :dateEnd, :lc, :name  , :pib, :user_id

  validates :pib, :presence => true
  validates :pib, :uniqueness => true
  validates :address, :presence => true
  validates :lc, :presence =>true
  validates :name, :presence =>true

  belongs_to  :user

  def self.search(search)
    if search
      where('pib LIKE ?', "%#{search}%")
    else
      all
    end
  end


end
