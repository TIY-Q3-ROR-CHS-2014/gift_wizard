class Group < ActiveRecord::Base
  belongs_to :secret_santa, class_name: "Group", foreign_key: :secret_santa_id
end
