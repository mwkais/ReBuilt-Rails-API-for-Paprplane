Rails.application.routes.draw do
  post 'userlogin', to: 'main_view#login'
  get 'userLoad', to: 'main_view#userLoad'
  get 'postLoad', to: 'main_view#mainPostLoad'
  post 'requestLoad', to: 'main_view#mainRequestLoad'
  post 'counterLoad', to: 'main_view#mainCounterLoad'
end
