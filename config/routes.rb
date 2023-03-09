Rails.application.routes.draw do
  get 'pages/index'
  get 'products/index'
  get 'paycheck/index'
  get '/paycheck/generate_paycheck', to: 'paycheck#generate_paycheck'
end
