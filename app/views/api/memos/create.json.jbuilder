@tweets = []
Memmo.all.each do |memmo|
  @tweets << {text: memmo.text, created_at: memmo.created_at}
end
json.tweet @tweets