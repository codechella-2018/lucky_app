Rails.application.routes.draw do
  get "/fortune_url" => "api/examples#fortune_action"
  get "/lotto_url" => "api/examples#lotto_action"
  get "/counter_url" => "api/examples#counter_action"
end