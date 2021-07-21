module Criar
    include HTTParty
    #url base de contatos
    base_uri 'https://api-de-tarefas.herokuapp.com'
    #opções do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json'   
    
end
