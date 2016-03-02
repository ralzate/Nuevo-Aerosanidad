class AddCie10ToHistoriasClinicas < ActiveRecord::Migration
  def change
    add_reference :historias_clinicas, :cie102, index: true, foreign_key: true
  end
end
