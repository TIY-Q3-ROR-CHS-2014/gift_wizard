class AddSecretSantaIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :secret_santa_id, :integer
  end
end
