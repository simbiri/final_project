Rails.application.routes.draw do
  root to: "news#index"

  #Meeting participant resource:

  post("/insert_meeting_participant", { :controller => "meeting_participants", :action => "create" })

  get("/meeting_participants", { :controller => "meeting_participants", :action => "index" })

  get("/meeting_participants/:path_id", { :controller => "meeting_participants", :action => "show" })

  post("/modify_meeting_participant/:path_id", { :controller => "meeting_participants", :action => "update" })

  get("/delete_meeting_participant/:path_id", { :controller => "meeting_participants", :action => "destroy" })

  #------------------------------

  #Meeting resource:

  post("/insert_meeting", { :controller => "meetings", :action => "create" })

  get("/meetings", { :controller => "meetings", :action => "index" })

  get("/meetings/:path_id", { :controller => "meetings", :action => "show" })

  post("/modify_meeting/:path_id", { :controller => "meetings", :action => "update" })

  get("/delete_meeting/:path_id", { :controller => "meetings", :action => "destroy" })

  #------------------------------

  #Task resource:

  post("/insert_task", { :controller => "tasks", :action => "create" })

  get("/tasks", { :controller => "tasks", :action => "index" })

  get("/tasks/:path_id", { :controller => "tasks", :action => "show" })

  post("/modify_task/:path_id", { :controller => "tasks", :action => "update" })

  get("/delete_task/:path_id", { :controller => "tasks", :action => "destroy" })

  #------------------------------

  #News attachment resource:

  post("/insert_news_attachment", { :controller => "news_attachments", :action => "create" })

  get("/news_attachments", { :controller => "news_attachments", :action => "index" })

  get("/news_attachments/:path_id", { :controller => "news_attachments", :action => "show" })

  post("/modify_news_attachment/:path_id", { :controller => "news_attachments", :action => "update" })

  get("/delete_news_attachment/:path_id", { :controller => "news_attachments", :action => "destroy" })

  #------------------------------

  #News resource:

  post("/insert_news", { :controller => "news", :action => "create" })

  get("/news", { :controller => "news", :action => "index" })

  get("/news/:path_id", { :controller => "news", :action => "show" })

  post("/modify_news/:path_id", { :controller => "news", :action => "update" })

  get("/delete_news/:path_id", { :controller => "news", :action => "destroy" })

  #------------------------------

  #Message attachment resource:

  post("/insert_message_attachment", { :controller => "message_attachments", :action => "create" })

  get("/message_attachments", { :controller => "message_attachments", :action => "index" })

  get("/message_attachments/:path_id", { :controller => "message_attachments", :action => "show" })

  post("/modify_message_attachment/:path_id", { :controller => "message_attachments", :action => "update" })

  get("/delete_message_attachment/:path_id", { :controller => "message_attachments", :action => "destroy" })

  #------------------------------

  #Post attachment resource:

  post("/insert_post_attachment", { :controller => "post_attachments", :action => "create" })

  get("/post_attachments", { :controller => "post_attachments", :action => "index" })

  get("/post_attachments/:path_id", { :controller => "post_attachments", :action => "show" })

  post("/modify_post_attachment/:path_id", { :controller => "post_attachments", :action => "update" })

  get("/delete_post_attachment/:path_id", { :controller => "post_attachments", :action => "destroy" })

  #------------------------------

  #Like resource:

  post("/insert_like", { :controller => "likes", :action => "create" })

  get("/likes", { :controller => "likes", :action => "index" })

  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  #Post comment resource:

  post("/insert_post_comment", { :controller => "post_comments", :action => "create" })

  get("/post_comments", { :controller => "post_comments", :action => "index" })

  get("/post_comments/:path_id", { :controller => "post_comments", :action => "show" })

  post("/modify_post_comment/:path_id", { :controller => "post_comments", :action => "update" })

  get("/delete_post_comment/:path_id", { :controller => "post_comments", :action => "destroy" })

  #------------------------------

  #Message resource:

  post("/insert_message", { :controller => "messages", :action => "create" })

  get("/messages", { :controller => "messages", :action => "index" })

  get("/messages/:path_id", { :controller => "messages", :action => "show" })

  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })

  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  #User workspace resource:

  post("/insert_user_workspace", { :controller => "user_workspaces", :action => "create" })

  get("/user_workspaces", { :controller => "user_workspaces", :action => "index" })

  get("/user_workspaces/:path_id", { :controller => "user_workspaces", :action => "show" })

  post("/modify_user_workspace/:path_id", { :controller => "user_workspaces", :action => "update" })

  get("/delete_user_workspace/:path_id", { :controller => "user_workspaces", :action => "destroy" })

  #------------------------------

  #Workspace resource:

  post("/insert_workspace", { :controller => "workspaces", :action => "create" })

  get("/workspaces", { :controller => "workspaces", :action => "index" })

  get("/workspaces/:path_id", { :controller => "workspaces", :action => "show" })

  post("/modify_workspace/:path_id", { :controller => "workspaces", :action => "update" })

  get("/delete_workspace/:path_id", { :controller => "workspaces", :action => "destroy" })

  #------------------------------

  #Follow request resource:

  post("/insert_follow_request", { :controller => "follow_requests", :action => "create" })

  get("/follow_requests", { :controller => "follow_requests", :action => "index" })

  get("/follow_requests/:path_id", { :controller => "follow_requests", :action => "show" })

  post("/modify_follow_request/:path_id", { :controller => "follow_requests", :action => "update" })

  get("/delete_follow_request/:path_id", { :controller => "follow_requests", :action => "destroy" })

  #------------------------------

  #Post resource:

  post("/insert_post", { :controller => "posts", :action => "create" })

  get("/posts", { :controller => "posts", :action => "index" })

  get("/posts/:path_id", { :controller => "posts", :action => "show" })

  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })

  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  #User resource:

  post("/insert_user", { :controller => "users", :action => "create" })

  get("/users", { :controller => "users", :action => "index" })

  get("/users/:path_id", { :controller => "users", :action => "show" })

  post("/modify_user/:path_id", { :controller => "users", :action => "update" })

  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

end
