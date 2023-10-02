Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })
  get("/update_user/:query_username", { :controller => "users", :action => "update" })


  # get("/comments")
  # get("/likes")


  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  get("/delete_photos/:path_id", { :controller => "photos", :action => "destroy" })
  get("/insert_photo", { :controller => "photos", :action => "create" })
  get("/update_photo/:path_id", { :controller => "photos", :action => "update" })
  post("/add_comment", { :controller => "comments", :action => "create" })


  # get("follow_requests")
end
