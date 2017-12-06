RailsAdmin.config do |config|

 ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  
  config.show_gravatar = true
  config.main_app_name = ["Notas de Aula Sistema Web          ", "               "]

  config.navigation_static_label = "Links Úteis"
    config.navigation_static_links = {
   'GitHub' => 'http://github.com/keniaguimaraes' 
  }


 ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  
  config.show_gravatar = true
  config.main_app_name = ["Controle de Notas          ", "               "]

  config.navigation_static_label = "Links Úteis"
    config.navigation_static_links = {
   'GitHub' => 'http://github.com/keniaguimaraes' 
  }



 config.model Disciplina do
    navigation_icon 'fa fa-user-plus'  #inclui icone
    weight -4                    #configura a ordem no menu lateral
  
    
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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
