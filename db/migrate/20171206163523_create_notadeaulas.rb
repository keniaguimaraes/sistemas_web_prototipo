class CreateNotadeaulas < ActiveRecord::Migration[5.1]
  def change
    create_table :notadeaulas do |t|
      t.string :autor
      t.integer :disciplina_id
      t.integer :semestre_id
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end
