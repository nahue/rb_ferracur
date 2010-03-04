class Producto < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :operacion
  has_attached_file :imagen, :styles => {:medium => "300x300>", :thumb => "100x100>"}

  def self.per_page
    10
  end
end
