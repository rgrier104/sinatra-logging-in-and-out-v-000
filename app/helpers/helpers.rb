class Helpers

  def self.current_user(session)
    @user = User.find(session.session_id)
    @user.username
  end

  def is_logged_in?(session)
    @user.id == session.session_id
  end

end
