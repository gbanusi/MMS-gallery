Rails.application.routes.draw do
  get 'projects/index'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root to: 'gallery#index'

	get 'presentation/slide1' => 'slides#slide1', :as => :slide1
	get 'presentation/slide2' => 'slides#slide2', :as => :slide2
	get 'presentation/slide3' => 'slides#slide3', :as => :slide3
	get 'presentation/slide4' => 'slides#slide4', :as => :slide4
	get 'presentation/slide5' => 'slides#slide5', :as => :slide5
	get 'presentation/slide6' => 'slides#slide6', :as => :slide6
	get 'presentation/slide7' => 'slides#slide7', :as => :slide7
	get 'presentation/slide8' => 'slides#slide8', :as => :slide8
	get 'presentation/slide9' => 'slides#slide9', :as => :slide9
	get 'presentation/slide10' => 'slides#slide10', :as => :slide10
	get 'presentation/slide11' => 'slides#slide11', :as => :slide11
	get 'presentation/slide12' => 'slides#slide12', :as => :slide12

	get 'galerija' => 'gallery#index', :as => :gallery
	get 'dodaj-sliku' => 'gallery#new',  :as => :new_picture
	post 'spremi-sliku' => 'gallery#create',  :as => :create_picture
	delete 'izbrisi-sliku/:picture_id' => 'gallery#destroy', :as => :destroy_picture
 

	get 'o-predmetu' => 'static#about', :as => :about

	#projects
	get 'projekti' => 'projects#index', :as => :projects
 	get 'dodaj-projekt' => 'projects#new', :as => :new_project
 	post 'stvori-projekt' => 'projects#create', :as => :create_project
 	delete 'izbrisi-projekt/:project_id' => 'projects#destroy', :as => :destroy_project
 
	# get 'obavijesti' => 'news#index', :as => :news
	# get 'nova-obavijest' => 'news#new', :as => :new_news
	# post 'stvori-obavijest' => 'news#create', :as => :create_news

end
