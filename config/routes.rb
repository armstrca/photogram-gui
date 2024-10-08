Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })
  get("/update_user/:username", { :controller => "users", :action => "update" })


  # get("/comments")
  # get("/likes")


  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:input_photo_id", { :controller => "photos", :action => "show" })
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })
  post("/insert_photo", { :controller => "photos", :action => "create" })
  get("/update_photo/:path_id", { :controller => "photos", :action => "update" })
  post("/add_comment/:path_id", { :controller => "comments", :action => "create" })


  # get("follow_requests")
end
