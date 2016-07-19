class CreateRubyists < ActiveRecord::Migration[5.0]
  def change
    create_table :rubyists do |t|

      t.timestamps
    end
  end
end
