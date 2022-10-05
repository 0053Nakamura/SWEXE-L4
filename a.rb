user = User.find(uid: params[:uid])
login_password = BCrypt::Password.new(user.pass)
if login_password == params[:pass]
    p "ログイン成功"
end

signup_password = BCrypt::Password.create("my password")
login_password = BCrypt::Password.new(signup_password)
if login_password == "my password"
    p "ログイン成功"
end