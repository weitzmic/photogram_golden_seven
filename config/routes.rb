Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get('/', { :controller => "photos", :action => 'index' })

# Create
get("/photos/new", {:controller => "photos", :action => "new_form"})
get("/create_photo", {:controller => "photos", :action => "create_row"})

# Read
get("/photos", {:controller => "photos", :action => "index"})
get("/photos/:id", {:controller => "photos", :action => "show"})

#Update
get("/photos/:id/edit", {:controller => "photos", :action => "edit_form"})
get("/update_photo/:id", {:controller => "photos", :action => "update_row"})

#Delete
get("/delete_photo/:id", {:controller => "photos", :action => "destroy_row"})

end
