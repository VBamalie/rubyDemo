# How to start ROR application
1. new rails {name of your project}
2. move into the file and run bundle install
3. run rails s
4. open your browser and type localhost:3000
# New Routes of ROR
1. rails generate controller {name of your model}
# Manually create routes for ROR
1. create Controller
    1. add to apps/controllers/{name of your controller}.rb
    2. 
    class {name of your controller}Controller < ApplicationController
        def index
        end
    end
2. add routes to routes.rb
    get '/{name of your controller}', to: '{name of your controller}#index'
3. add to views folder
    1. add folder {name of route}
    2. add file index.html.erb
    3. add code to index.html.erb
3. make sure views/layout/application.html.erb has <%=yield%>
# Create User Auth
1. type command rails generate model User email:string password_digest:string
2. type command rails db:migrate