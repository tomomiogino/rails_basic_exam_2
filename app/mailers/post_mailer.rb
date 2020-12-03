class PostMailer < ApplicationMailer
  def post_mail(post)
    @post = post
    mail to: @post.user.email, subject: "新規投稿の確認メール"
  end
end
