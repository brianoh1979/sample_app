Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  root 'application#hello' #re-adding after git push mess
end
