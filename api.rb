require 'net/http'
require 'uri'
require 'json'
request = Net::HTTP.get(URI.parse('https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json'))

json_data = JSON.parse(request)

publishingOffice = json_data['publishingOffice']
reportDatetime = json_data['reportDatetime']
targetArea = json_data['targetArea']
headlineText = json_data['headlineText']
text = json_data['text']

puts "発表者:#{publishingOffice}\n報告日時:#{reportDatetime}\n対象地域:#{targetArea}\nヘッドライン:#{headlineText}\n詳細:#{text}"
