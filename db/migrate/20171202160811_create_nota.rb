class CreateNota < ActiveRecord::Migration[5.1]
  def change
    create_table :nota do |t|
      t.string :autor
      t.integer :semestre_id
      t.integer :disciplina_id
      t.date :data
      t.text :texto

      t.timestamps
    end
  end
end
