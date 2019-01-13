@user = User.create(email: "test@test.com", password: "12345678", password_confirmation: "12345678", first_name: "John", last_name: "Snow")
admin_user = AdminUser.create(email: "amanda.lemmons@gmail.com", password: "12345678", password_confirmation: "12345678", first_name: "Admin", last_name: "User")


puts "1 User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
