Rails.application.routes.draw do

   root 'pages#index'
   post "/" => "pages#create"
 
end
