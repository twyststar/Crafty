class AddImagesToProducts < ActiveRecord::Migration[5.1]
  def self.up
      change_table :products do |t|
        t.attachment :image
      end
    end

  def self.down
    drop_attached_file :products, :image
  end
end
