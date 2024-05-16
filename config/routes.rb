Rails.application.routes.draw do
  root to: "news#index"
  # Routes for the Meeting participant resource:

  # CREATE
  post("/insert_meeting_participant", { :controller => "meeting_participants", :action => "create" })
          
  # READ
  get("/meeting_participants", { :controller => "meeting_participants", :action => "index" })
  
  get("/meeting_participants/:path_id", { :controller => "meeting_participants", :action => "show" })
  
  # UPDATE
  
  post("/modify_meeting_participant/:path_id", { :controller => "meeting_participants", :action => "update" })
  
  # DELETE
  get("/delete_meeting_participant/:path_id", { :controller => "meeting_participants", :action => "destroy" })

  #------------------------------

  # Routes for the Meeting resource:

  # CREATE
  post("/insert_meeting", { :controller => "meetings", :action => "create" })
          
  # READ
  get("/meetings", { :controller => "meetings", :action => "index" })
  
  get("/meetings/:path_id", { :controller => "meetings", :action => "show" })
  
  # UPDATE
  
  post("/modify_meeting/:path_id", { :controller => "meetings", :action => "update" })
  
  # DELETE
  get("/delete_meeting/:path_id", { :controller => "meetings", :action => "destroy" })

  #------------------------------

  # Routes for the Task resource:

  # CREATE
  post("/insert_task", { :controller => "tasks", :action => "create" })
          
  # READ
  get("/tasks", { :controller => "tasks", :action => "index" })
  
  get("/tasks/:path_id", { :controller => "tasks", :action => "show" })
  
  # UPDATE
  
  post("/modify_task/:path_id", { :controller => "tasks", :action => "update" })
  
  # DELETE
  get("/delete_task/:path_id", { :controller => "tasks", :action => "destroy" })

  #------------------------------

  # Routes for the News attachment resource:

  # CREATE
  post("/insert_news_attachment", { :controller => "news_attachments", :action => "create" })
          
  # READ
  get("/news_attachments", { :controller => "news_attachments", :action => "index" })
  
  get("/news_attachments/:path_id", { :controller => "news_attachments", :action => "show" })
  
  # UPDATE
  
  post("/modify_news_attachment/:path_id", { :controller => "news_attachments", :action => "update" })
  
  # DELETE
  get("/delete_news_attachment/:path_id", { :controller => "news_attachments", :action => "destroy" })

  #------------------------------

  # Routes for the News resource:

  # CREATE
  post("/insert_news", { :controller => "news", :action => "create" })
          
  # READ
  get("/news", { :controller => "news", :action => "index" })
  
  get("/news/:path_id", { :controller => "news", :action => "show" })
  
  # UPDATE
  
  post("/modify_news/:path_id", { :controller => "news", :action => "update" })
  
  # DELETE
  get("/delete_news/:path_id", { :controller => "news", :action => "destroy" })

  #------------------------------

  # Routes for the Message attachment resource:

  # CREATE
  post("/insert_message_attachment", { :controller => "message_attachments", :action => "create" })
          
  # READ
  get("/message_attachments", { :controller => "message_attachments", :action => "index" })
  
  get("/message_attachments/:path_id", { :controller => "message_attachments", :action => "show" })
  
  # UPDATE
  
  post("/modify_message_attachment/:path_id", { :controller => "message_attachments", :action => "update" })
  
  # DELETE
  get("/delete_message_attachment/:path_id", { :controller => "message_attachments", :action => "destroy" })

  #------------------------------

  # Routes for the Post attachment resource:

  # CREATE
  post("/insert_post_attachment", { :controller => "post_attachments", :action => "create" })
          
  # READ
  get("/post_attachments", { :controller => "post_attachments", :action => "index" })
  
  get("/post_attachments/:path_id", { :controller => "post_attachments", :action => "show" })
  
  # UPDATE
  
  post("/modify_post_attachment/:path_id", { :controller => "post_attachments", :action => "update" })
  
  # DELETE
  get("/delete_post_attachment/:path_id", { :controller => "post_attachments", :action => "destroy" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })
          
  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  
  # DELETE
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  # Routes for the Post comment resource:

  # CREATE
  post("/insert_post_comment", { :controller => "post_comments", :action => "create" })
          
  # READ
  get("/post_comments", { :controller => "post_comments", :action => "index" })
  
  get("/post_comments/:path_id", { :controller => "post_comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_post_comment/:path_id", { :controller => "post_comments", :action => "update" })
  
  # DELETE
  get("/delete_post_comment/:path_id", { :controller => "post_comments", :action => "destroy" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the User workspace resource:

  # CREATE
  post("/insert_user_workspace", { :controller => "user_workspaces", :action => "create" })
          
  # READ
  get("/user_workspaces", { :controller => "user_workspaces", :action => "index" })
  
  get("/user_workspaces/:path_id", { :controller => "user_workspaces", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_workspace/:path_id", { :controller => "user_workspaces", :action => "update" })
  
  # DELETE
  get("/delete_user_workspace/:path_id", { :controller => "user_workspaces", :action => "destroy" })

  #------------------------------

  # Routes for the Workspace resource:

  # CREATE
  post("/insert_workspace", { :controller => "workspaces", :action => "create" })
          
  # READ
  get("/workspaces", { :controller => "workspaces", :action => "index" })
  
  get("/workspaces/:path_id", { :controller => "workspaces", :action => "show" })
  
  # UPDATE
  
  post("/modify_workspace/:path_id", { :controller => "workspaces", :action => "update" })
  
  # DELETE
  get("/delete_workspace/:path_id", { :controller => "workspaces", :action => "destroy" })

  #------------------------------

  # Routes for the Follow request resource:

  # CREATE
  post("/insert_follow_request", { :controller => "follow_requests", :action => "create" })
          
  # READ
  get("/follow_requests", { :controller => "follow_requests", :action => "index" })
  
  get("/follow_requests/:path_id", { :controller => "follow_requests", :action => "show" })
  
  # UPDATE
  
  post("/modify_follow_request/:path_id", { :controller => "follow_requests", :action => "update" })
  
  # DELETE
  get("/delete_follow_request/:path_id", { :controller => "follow_requests", :action => "destroy" })

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  post("/insert_user", { :controller => "users", :action => "create" })
          
  # READ
  get("/users", { :controller => "users", :action => "index" })
  
  get("/users/:path_id", { :controller => "users", :action => "show" })
  
  # UPDATE
  
  post("/modify_user/:path_id", { :controller => "users", :action => "update" })
  
  # DELETE
  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
