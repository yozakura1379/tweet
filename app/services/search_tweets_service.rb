class SearchTweetsService
  def self.search(search) #クラスメソッドをsearchにしたことでモデルからサービスクラスへ検索機能を切り出せた
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end