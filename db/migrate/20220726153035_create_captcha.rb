class CreateCaptcha < ActiveRecord::Migration[6.1]
  def change
    create_table :captchas do |t|
      t.string :content
      t.timestamps
    end
  end
end
