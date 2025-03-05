class AddForeignKey < ActiveRecord::Migration[7.1]
  def change
    add_reference :countries, :user, foreign_key: true
  end
end
