json.data Memmo.all

@tweets = []
Memmo.all.each do |memmo|
  @tweets << memmo.tweet
end
json.tweet @tweets