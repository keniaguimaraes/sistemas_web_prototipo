class AddDataToNotadeaula < ActiveRecord::Migration[5.1]
  def change
    add_column :notadeaulas, :data, :date
  end
end
