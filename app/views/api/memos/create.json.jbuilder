@tweets = []
Memmo.all.each do |memmo|
  @tweets << memmo.text
end
json.data @tweets