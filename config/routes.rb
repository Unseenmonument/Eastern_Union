Rails.application.routes.draw do
  resources :senders
  resources :countries
  resources :r_moneys
  resources :s_moneys

  root 'senders#new'
 # get 'send_money/New_Sender_Conf' => 'senders#new_sender_conf'
  get 'send_money/Sender_Index' => 'senders#index'
  get 'send_money/Show_Transaction' => 'senders#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
