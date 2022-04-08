namespace :db do
  task :setup_admin, [:email, :password] => :environment do |_t, args|
    admin_user = User.create!(
      email: args.fetch(:email),
      password: args.fetch(:password),
      confirmed_at: DateTime.now,
      approved: true
    )

    admin_user.add_role(:admin)
  end
end