class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors unless table_exists?(:authors) do |t|
      t.string :name

      t.timestamps
    end
  end
end
