Rails.application.routes.draw do
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  # get("/comments")
  # get("/likes")
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  get("/delete_photos/:path_id", { :controller => "photos", :action => "destroy" })
  # get("follow_requests")
end
