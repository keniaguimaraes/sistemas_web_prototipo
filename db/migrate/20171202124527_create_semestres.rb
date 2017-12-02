class CreateSemestres < ActiveRecord::Migration[5.1]
  def change
    create_table :semestres do |t|
      t.integer :ano
      t.integer :tipo

      t.timestamps
    end
  end
end
