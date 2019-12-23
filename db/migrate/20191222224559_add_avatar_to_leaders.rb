class AddAvatarToLeaders < ActiveRecord::Migration[6.0]
  def change
    add_column :leaders, :avatar, :string
  end
end
