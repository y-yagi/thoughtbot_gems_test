class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    user = User.find_by!(email: @email.from[:email])
    user.todos.create!(
      title: @email.subject,
      text: @email.body
    )
  end
end
