Dado("que envio uma requisição GET para {string}") do |url|
  @request = HTTParty.get(url)
  puts @request
end

Então("o retorno do http code deve ser {int}") do |http_code|
  expect(@request.code).to eql(http_code)
  puts @request.code
end
