Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "questions#ask"

  # Defines the ask path route ("/ask")
  get "/ask", to: "questions#ask"

  # Defines the answer path route ("/answer")
  get "/answer", to: "questions#answer"

  post '/questions', to: 'questions#create'
end
