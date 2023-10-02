Rails.application.routes.draw do
  get("/users", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  # get("/comments")
  # get("/likes")
  # get("/photos")
  # get("follow_requests")
end
