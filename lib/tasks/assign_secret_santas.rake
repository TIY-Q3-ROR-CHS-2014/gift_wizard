task assign_secret_santas: :environment do
  p "Hey hey heyyyyyyy"
  available_ids = Group.all.map(&:id).shuffle
  Group.all.each do |group|
    group.secret_santa_id = available_ids.pop
    group.save
    SecretSantaMailer.send_secret_santa_email(group).deliver
  end
end
