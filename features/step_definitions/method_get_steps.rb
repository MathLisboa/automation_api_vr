Dado('que o usuario tenha o endereco da consulta') do
  $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
end

Quando('realizar a requisicao de consulta') do
  $response = HTTParty.get($uri_base)
end

Entao('retornará os dados listados, respondendo com o codigo {int}') do |int|
  expect($response.code).to eq (200)
  puts "response body #{$response.body}"
  expect($response.response.body['typeOfEstablishment'].select { |typeOfEstablishment| typeOfEstablishment['name'].eql?('EMPORIO') }.empty?).to be_truthy 
end
