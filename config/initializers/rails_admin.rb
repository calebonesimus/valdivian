RailsAdmin.config do |config|


  config.authorize_with do
    redirect_to main_app.root_path unless current_user and current_user.role == "admin"
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
