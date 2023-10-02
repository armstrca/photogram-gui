Rails.application.routes.draw do
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  # get("/comments")
  # get("/likes")
  get("/photos", { :controller => "photos", :action => "index" })
  # get("follow_requests")
end
