class Categoria < ActiveRecord::Base
  has_and_belongs_to_many :tipos
  def name
    cat_nombre
  end
end
