module UsersHelper

  # 引数で与えられたユーザーのGravatar画像を返す
  # def gravatar_for(user, options = { size: 80 })# オプション引数
  def gravatar_for(user, size: 80)# キーワード引数
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    # size = options[:size] # オプション引数を設定したときに必要
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
