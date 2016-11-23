module UsersHelper
  def has_post?(user)
    !@user.posts.empty?
  end

  def has_comment?(user)
    !@user.comments.empty?
  end

  def has_favorites?(user)
    !@user.favorites.empty?
  end
end
