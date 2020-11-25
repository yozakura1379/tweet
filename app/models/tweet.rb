class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments   # commentsテーブルとのアソシエーション

# バリデーションの後で「puts_sample」を実行
after_validation :puts_sample

# 「puts_sample」というcallbackを登録
  private
  def puts_sample
    puts 'sample'
  end
  
  
  # def self.search(search)    ここの記述はsearch_tweets_service.rbに記述したのでいらなくなった
  #   if search != ""
  #     Tweet.where('text LIKE(?)', "%#{search}%")
  #   else
  #     Tweet.all
  #   end
  # end
end