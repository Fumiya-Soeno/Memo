@tweets = []
Memmo.all.each do |memmo|
  @tweets << {text: memmo.text, created_at: memmo.created_at.strftime("%Y年%m月%d日 %H:%M:%S")}
end
json.tweet @tweets.reverse