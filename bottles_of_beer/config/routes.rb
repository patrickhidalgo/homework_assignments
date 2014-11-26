Rails.application.routes.draw do
  get 'bottles_of_beer/:number_of_bottles' =>
    'drinking#bottles', as: 'bottles'

  get 'pass_one_around/:number_of_bottles' =>
    'drinking#pass', as: 'pass'
end
