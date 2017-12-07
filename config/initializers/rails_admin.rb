RailsAdmin.config do |config|

 ### Popular gems integration

  ## == Devise =
  
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
   'GitHub' => 'https://github.com/keniaguimaraes/workshopsistemasweb' ,
   'Moodle' => 'https://www.moodle.ufba.br/' 
  }



 config.model Disciplina do
    navigation_icon 'fa fa-book'  #inclui icone
    weight -4                    #configura a ordem no menu lateral
    
    create do
      configure :notadeaula do
        hide
      end
      field  :nome do
        label "Nome"
      end
      field  :horas do
        label "Carga Horária"
      end
       field  :creditos do
        label "Créditos"
      end
    end 

    list do
       field  :nome do
        label "Nome"
      end
      field  :horas do
        label "Carga Horária"
      end
       field  :creditos do
        label "Créditos"
      end
    end 
    
    edit do
     configure :notadeaula do
        hide
      end
       field  :nome do
        label "Nome"
      end
      field  :horas do
        label "Carga Horária"
      end
       field  :creditos do
        label "Créditos"
      end
    end 
    
     export do
     configure :notadeaula do
        hide
      end
      field  :nome do
        label "Nome"
      end
      field  :horas do
        label "Carga Horária"
      end
       field  :creditos do
        label "Créditos"
      end
    end
 end
 
   config.model Semestre do
    navigation_icon 'fa fa-graduation-cap'  #inclui icone
    weight -3                    #configura a ordem no menu lateral
    
    create do
      configure :notadeaula do
        hide
      end
      field  :ano do
        label "Ano"
      end
      field  :tipo do
        label "Tipo"
      end
    end 

    list do
      configure :notadeaula do
        hide
      end
      field  :ano do
        label "Ano"
      end
      field  :tipo do
        label "Tipo"
      end
    end 
    
    edit do
      configure :notadeaula do
        hide
      end
      field  :ano do
        label "Ano"
      end
      field  :tipo do
        label "Tipo"
      end
    end 
    
     export do
      configure :notadeaula do
        hide
      end
      field  :ano do
        label "Ano"
      end
      field  :tipo do
        label "Tipo"
      end
    end 
 end
 
 
config.model Notadeaula do
   navigation_icon 'fa fa-sticky-note'  #inclui icone
   weight -1                   #configura a ordem no menu lateral

    create do 
    
         field :autor do 
              label "Autor"
         end
    
         field :disciplina_id , :enum do
            enum do
              Disciplina.all.map{ |a| [a.nome,a.id] }
            end
            label "Disciplina"
         end

         field :semestre_id, :enum do
            enum do
              Semestre.all.map{ |a| [a.ano,a.id] }
            end
             label "Semestre"
         end
         
         field:data do
                label "Data"
         end  
          
          
         field:titulo do
                 label "Título"
         end  
          
         field:texto do
                 label "Conteudo"
         end  
    end
   
   
     list do 
    
         field :autor do 
              label "Autor"
         end
    
         field :disciplina_id , :enum do
            enum do
              Disciplina.all.map{ |a| [a.nome,a.id] }
            end
            label "Disciplina"
         end

         field :semestre_id, :enum do
            enum do
              Semestre.all.map{ |a| [a.ano,a.id] }
            end
             label "Semestre"
         end
         
         field:data do
                label "Data"
         end  
          
          
         field:titulo do
                 label "Título"
         end  
          
         field:texto do
                 label "Conteudo"
         end  
     end
      
      
      edit do 
       field :autor do 
              label "Autor"
         end
    
         field :disciplina_id , :enum do
            enum do
              Disciplina.all.map{ |a| [a.nome,a.id] }
            end
            label "Disciplina"
         end

         field :semestre_id, :enum do
            enum do
              Semestre.all.map{ |a| [a.ano,a.id] }
            end
             label "Semestre"
         end
         
         field:data do
                label "Data"
         end  
          
          
         field:titulo do
                 label "Título"
         end  
          
         field:texto do
                 label "Conteudo"
         end  
        
      end
      
     show do
       
         field :autor do 
              label "Autor"
         end
    
         field :disciplina_id , :enum do
            enum do
              Disciplina.all.map{ |a| [a.nome,a.id] }
            end
            label "Disciplina"
         end

         field :semestre_id, :enum do
            enum do
              Semestre.all.map{ |a| [a.ano,a.id] }
            end
             label "Semestre"
         end
         
         field:data do
                label "Data"
         end  
          
          
         field:titulo do
                 label "Título"
         end  
          
         field:texto do
                 label "Conteudo"
         end  
     end   
     

     
     export do 
    
        field :autor do 
              label "Autor"
         end
    
         field :disciplina_id , :enum do
            enum do
              Disciplina.all.map{ |a| [a.nome,a.id] }
            end
            label "Disciplina"
         end

         field :semestre_id, :enum do
            enum do
              Semestre.all.map{ |a| [a.ano,a.id] }
            end
             label "Semestre"
         end
         
         field:data do
                label "Data"
         end  
          
          
         field:titulo do
                 label "Título"
         end  
          
         field:texto do
                 label "Conteudo"
         end  
     end
      
end
 
  
  config.model User do
   weight 0 
  navigation_icon 'fa fa-user-o'  #inclui icone
  
  list do 
    field :email
  end  

  export do 
    field :email
  end 
 end
 
 
 

  config.actions do
    dashboard do

    end
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
